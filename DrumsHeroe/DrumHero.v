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
module DrumHero(start,clk,nivel2,nivel3,boton1,boton2,boton3,
					 boton4,boton5,hsync,vsync,rgb,Activadores, SalidaSiete);

//Las entradas necesarias
input start;
input clk;
input nivel2,nivel3;
input boton1,boton2,boton3,boton4,boton5;

output [2:0] rgb;
output hsync, vsync;
output [3:0] Activadores;
output [6:0] SalidaSiete;

wire comenzar, reiniciar,stop,perdio;
wire [5:0] EntradaMaquinaPintar;
wire [5:0] SalidaMaquinaPintar;
wire LeerOEscribir;
wire [9:0] pixelX,pixelY;
wire clk32;
wire [2:0] colorBanda;

wire [15:0] convertidores;
wire [3:0] dataSieteSegmentos;
wire [12:0] puntuacion;
wire [9:0] posicionBandaPrincipal;

parameter posicionBandaStatic = 384;

// La maquina principal que sirve para la primer etapa solo para jugar o detener el juego
MaquinaNivel1 primeraEtapa(
.Iniciar(start),
.Perdio(perdio),
.Comenzar(comenzar),
.Reiniciar(reiniciar),
.clk(clk),
.Stop(stop));

Maquina_pintar segundaEtapa(
.Entrada({EntradaMaquinaPintar,comenzar}),
.Salida(SalidaMaquinaPintar),
.clk(clk),
.reset(reiniciar),
.colorRes(rgb),
.colorBanda(colorBanda));

vga_sync SincronizadorVga(
.clk(clk), 
.reset(reiniciar),
.hsync(hsync), 
.vsync(vsync), 
.video_on(LeerOEscribir), 
.p_tick(),
.pixel_x(pixelX), 
.pixel_y(pixelY)
);

Tubo tubo1(
.clk(clk), 
.reset(reiniciar), 
.enable(start), 
.video_on(LeerOEscribir),
.presentX(pixelX),
.presentY(pixelY),
.pixel(colorBanda),
.maquinaOut(SalidaMaquinaPintar[0]),
.pintar(EntradaMaquinaPintar[0]),
.posicionY(posicionBandaStatic[9:0]),
.posicionYS(),
.contar(1'b0)
);

Tubo tubo2(
.clk(clk), 
.reset(reiniciar), 
.enable(start), 
.video_on(LeerOEscribir),
.presentX(pixelX),
.presentY(pixelY),
.pixel(),
.maquinaOut(SalidaMaquinaPintar[1]),
.pintar(EntradaMaquinaPintar[1]),
.posicionY(10'b0),
.posicionYS(posicionBandaPrincipal),
.contar(clk32)
);

clock32pps reloj32(
.clk(clk),
.clk32(clk32),
.stop(stop),
.nivel2(nivel2),
.nivel3(nivel3));

Puntuacion puntuar(
.posBP1(posicionBandaStatic[9:0]),
.posL1(posicionBandaPrincipal),
.posL2(),
.posL3(),
.posL4(),
.posL5(), 
.clk(clk), 
.puntuacion(puntuacion), 
.perdio(), 
.reset(reiniciar)
);

// Falta la entrada en binario de los datos

DoubleDabbing CBD(
.Entrada(puntuacion),
.Salidas(convertidores),
.clk(clk),
.reset(reiniciar)
);

Filtro filtro(
.Activadores(Activadores),
.Entrada(convertidores),
.Salida(dataSieteSegmentos));

SelectorM selector(
.clk(clk),
.Activadores(Activadores)
);

ControladorSiete siete(
.Salida(SalidaSiete),
.Entrada(dataSieteSegmentos)
);


endmodule
