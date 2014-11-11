`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:29 10/07/2014 
// Design Name: 
// Module Name:    DrumHero 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DrumHero(clk,nivel2,nivel3,start,hsync,vsync,rgb,
					 Activadores, SalidaSiete,SalidaLeds,
					 DireccionRAM, DataRAM,SenalesRAM,
					 MCLK,LRCLK,SDIN,Calibrador,dDATA,CS,CLK12_5K
					 );

	 //Las entradas necesarias
	 
	input start;
	input clk;
	input nivel2,nivel3;
	wire boton1,boton2,boton3,boton4,boton5;

	output [7:0] rgb;
	output hsync, vsync;
	output [3:0] Activadores;
	output [6:0] SalidaSiete;
	output [4:0] SalidaLeds;
	
	output MCLK;
	output LRCLK; 
	output SDIN;
	
	output [25:0] DireccionRAM;
	output [7:0]  SenalesRAM;
	input  [15:0] DataRAM;
	
	input  [4:0] Calibrador;
	input  [4:0] dDATA;
	output [2:0] CS;
	output [2:0] CLK12_5K;
	
	wire comenzar, reiniciar,stop,perdio;
	wire [4:0] EntradaMaquinaPintar;
	wire [4:0] SalidaMaquinaPintar;
	wire LeerOEscribir;
	wire [9:0] pixelX,pixelY;
	wire clk32;
	
	wire [7:0] colorBanda;
	wire [7:0] colorLinea1;
	wire [7:0] colorLinea2;
	wire [7:0] colorLinea3;
	wire [7:0] colorLinea4;
	wire [7:0] colorLinea5;

	wire [15:0] convertidores;
	wire [3:0] dataSieteSegmentos;
	wire [12:0] puntuacion;
	wire [12:0] puntuacionInicial;
	
	wire [9:0] posicionBanda1;
	wire [9:0] posicionBanda2;
	wire [9:0] posicionBanda3;
	wire [9:0] posicionBanda4;
	
	wire [4:0] RandomLista;
	wire [4:0] cubosLinea1, cubosLinea2, cubosLinea3, cubosLinea4;
	
	wire clk50;
	wire LClock;
	wire clk32SinStop;
	
	wire [4:0] SalidaLedsTemp;

	parameter posicionBandaStatic = 410;
	parameter posicionInici1 = 0;
	parameter posicionInici2 = 94;
	parameter posicionInici3 = 188;
	parameter posicionInici4 = 282;
	
	parameter todosLosCubos = 31; 
	
	Clock25 clock50(.clk(clk),.clk25(clk50));

	// La maquina principal que sirve para la primer etapa solo para jugar o detener el juego
	MaquinaNivel1 primeraEtapa(
	.Iniciar(start),
	.Perdio(perdio),
	.Comenzar(comenzar),
	.Reiniciar(reiniciar),
	.clk(clk50),
	.Stop(stop));

	Maquina_pintar segundaEtapa(
	.Entrada({EntradaMaquinaPintar,comenzar}),
	.Salida(SalidaMaquinaPintar),
	.clk(clk50),
	.reset(reiniciar));

	 assign rgb =  (LeerOEscribir == 1'b0)? 8'b00000000:
					  (1'b1 ==  SalidaMaquinaPintar[0])?colorBanda:
					  (1'b1 ==  SalidaMaquinaPintar[1])?colorLinea1:
					  (1'b1 ==  SalidaMaquinaPintar[2])?colorLinea2:
					  (1'b1 ==  SalidaMaquinaPintar[3])?colorLinea3:
					  (1'b1 ==  SalidaMaquinaPintar[4])?colorLinea4:
																	8'b11111111;

	vga_sync SincronizadorVga(
	.clk(clk50), 
	.reset(reiniciar),
	.hsync(hsync), 
	.vsync(vsync), 
	.video_on(LeerOEscribir), 
	.p_tick(),
	.pixel_x(pixelX), 
	.pixel_y(pixelY)
	);
	
	ListaValores listaV(.RandomSalida(RandomLista), .clk(clk50));

	Tubo tubo1(
	.clk(clk50), 
	.reset(reiniciar), 
	.enable(start), 
	.video_on(LeerOEscribir),
	.presentX(pixelX),
	.presentY(pixelY),
	.pixel(colorBanda),
	.maquinaOut(SalidaMaquinaPintar[0]),
	.pintar(EntradaMaquinaPintar[0]),
	.posicionY(posicionBandaStatic[9:0]),
	.contar(1'b0),
	.cubosHilera(todosLosCubos[4:0])
	);

	Tubo tubo2(
	.clk(clk50), 
	.reset(reiniciar), 
	.enable(start), 
	.video_on(LeerOEscribir),
	.presentX(pixelX),
	.presentY(pixelY),
	.pixel(colorLinea1),
	.maquinaOut(SalidaMaquinaPintar[1]),
	.pintar(EntradaMaquinaPintar[1]),
	.posicionY(posicionInici1[9:0]),
	.posicionYS(posicionBanda1),
	.contar(clk32),
	.cubosHilera(RandomLista),
	.cubosHileraReg(cubosLinea1)
	);
	
	Tubo tubo3(
	.clk(clk50), 
	.reset(reiniciar), 
	.enable(start), 
	.video_on(LeerOEscribir),
	.presentX(pixelX),
	.presentY(pixelY),
	.pixel(colorLinea2),
	.maquinaOut(SalidaMaquinaPintar[2]),
	.pintar(EntradaMaquinaPintar[2]),
	.posicionY(posicionInici2[9:0]),
	.posicionYS(posicionBanda2),
	.contar(clk32),
	.cubosHilera(RandomLista),
	.cubosHileraReg(cubosLinea2)
	);
	
	Tubo tubo4(
	.clk(clk50), 
	.reset(reiniciar), 
	.enable(start), 
	.video_on(LeerOEscribir),
	.presentX(pixelX),
	.presentY(pixelY),
	.pixel(colorLinea3),
	.maquinaOut(SalidaMaquinaPintar[3]),
	.pintar(EntradaMaquinaPintar[3]),
	.posicionY(posicionInici3[9:0]),
	.posicionYS(posicionBanda3),
	.contar(clk32),
	.cubosHilera(RandomLista),
	.cubosHileraReg(cubosLinea3)
	);
	
	Tubo tubo5(
	.clk(clk50), 
	.reset(reiniciar), 
	.enable(start), 
	.video_on(LeerOEscribir),
	.presentX(pixelX),
	.presentY(pixelY),
	.pixel(colorLinea4),
	.maquinaOut(SalidaMaquinaPintar[4]),
	.pintar(EntradaMaquinaPintar[4]),
	.posicionY(posicionInici4[9:0]),
	.posicionYS(posicionBanda4),
	.contar(clk32),
	.cubosHilera(RandomLista),
	.cubosHileraReg(cubosLinea4)
	);

	clock32pps reloj32(
	.clk(clk50),
	.clk32(clk32),
	.clk32SinStop(clk32SinStop),
	.stop(stop),
	.nivel2(nivel2),
	.nivel3(nivel3));

	Puntuacion puntuar(
	.posBP1(posicionBandaStatic[9:0]),
	.posL1(posicionBanda1),
	.posL2(posicionBanda2),
	.posL3(posicionBanda3),
	.posL4(posicionBanda4), 
	.clk(clk50), 
	.puntuacion(puntuacionInicial), 
	.perdio(perdio), 
	.reset(start),
	.botonesBaq({boton1,boton2,boton3,boton4,boton5}),
	.leds(SalidaLedsTemp),
	.linea1(cubosLinea1),
	.linea2(cubosLinea2),
	.linea3(cubosLinea3),
	.linea4(cubosLinea4)
	);

	PuntuacionTotal(
	.puntuacionEntrada(puntuacionInicial), 
	.puntuacionSalida(puntuacion), 
	.enable(clk32SinStop), 
	.clk(clk50),
	.standBy(stop));

	DoubleDabbing CBD(
	.Entrada(puntuacion),
	.Salidas(convertidores),
	.clk(clk50),
	.reset(reiniciar)
	);

	Filtro filtro(
	.Activadores(Activadores),
	.Entrada(convertidores),
	.Salida(dataSieteSegmentos));

	SelectorM selector(
	.clk(clk50),
	.Activadores(Activadores)
	);

	ControladorSiete siete(
	.Salida(SalidaSiete),
	.Entrada(dataSieteSegmentos)
	);
	
	assign LRCLK = LClock;
	assign SenalesRAM = {5'b00000,clk50,2'b10};
	
	Sonido ModuloMusica(
	.clk(clk50), 
	.MCLK(MCLK), 
	.LRCLK(LClock), 
	.SDIN(SDIN), 
	.reset(reiniciar), 
	.transmisionIn(DataRAM));
	
	RecorreRam(
	.habilitador(LClock),
	.DireccionRAM(DireccionRAM),
	.enable(stop),
	.nivel2(nivel2),
	.nivel3(nivel3),
	.boton(boton1 | boton2 | boton3 | boton4 | boton5));
	
	PmodAD1GGWP(.CLK(clk), 
					.calibrate1(Calibrador[0]), 
					.calibrate2(Calibrador[1]), 
					.calibrate3(Calibrador[2]), 
					.calibrate4(Calibrador[3]),
					.calibrate5(Calibrador[4]), 
					.dDATA1(dDATA[0]), 
					.dDATA2(dDATA[1]), 
					.dDATA3(dDATA[2]), 
					.dDATA4(dDATA[3]), 
					.dDATA5(dDATA[4]), 
					.CS1(CS[0]), 
					.CS2(CS[1]), 
					.CS3(CS[2]),
					.CLK12_5K1(CLK12_5K[0]), 
					.CLK12_5K2(CLK12_5K[1]), 
					.CLK12_5K3(CLK12_5K[2]), 
					.led({boton1,boton2,boton3,boton4,boton5}));
					
	assign SalidaLeds = (!stop)? SalidaLedsTemp: {boton1,boton2,boton3,boton4,boton5};

endmodule
