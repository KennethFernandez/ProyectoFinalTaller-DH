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
module DrumHero(start,clk,nivel2,nivel3,boton1,boton2,boton3,boton4,boton5,hsync,vsync,rgb);

input start;
input clk;
input nivel2,nivel3;
input boton1,boton2,boton3,boton4,boton5;

output [2:0] rgb;
output hsync, vsync;

wire comenzar, reiniciar,stop,perdio;
wire [5:0] EntradaMaquinaPintar;
wire [5:0] SalidaMaquinaPintar;
wire LeerOEscribir;
wire [9:0] pixelX,pixelY;
wire clk32;
wire [2:0] colorBanda;

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
.pintar(EntradaMaquinaPintar[1]),
.posicionY(384),
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
.pintar(EntradaMaquinaPintar[2]),
.posicionY(0),
.posicionYS(),
.contar(clk32)
);

clock32pps reloj32(
.clk(clk),
.clk32(clk32),
.stop(stop),
.nivel2(nivel2),
.nivel3(nivel3));

endmodule
