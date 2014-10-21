`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:01:32 09/27/2014 
// Design Name: 
// Module Name:    Tubo 
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
module Tubo(clk, reset, enable, video_on,presentX,presentY,pixel,
				     maquinaOut,pintar,posicionY, posicionYS,contar);
	 
	input  clk, reset, enable;
	input  video_on;
	input [9:0] presentX;
	input [9:0] presentY;
	input maquinaOut;
	input [9:0] posicionY;
	input contar;
	
	output [7:0] pixel;
	output pintar;
	
	output reg [9:0] posicionYS = 0;
	
	reg cuadrado1 = 0;
	reg cuadrado2 = 0;
	reg cuadrado3 = 0;
	reg cuadrado4 = 0;
	reg cuadrado5 = 0;
	
	reg [6:0] PuntoFuga = 0;
	
	parameter cuadro1 = 80;
	parameter cuadro2 = 176;
	parameter cuadro3 = 272;
	parameter cuadro4 = 368;
	parameter cuadro5 = 464;

	parameter colorC1 = 224;
	parameter colorC2 = 28;
	parameter colorC3 = 252;
	parameter colorC4 = 3;
	parameter colorC5 = 248;
	parameter fondoT = 255;
	
	parameter puntofinal = 480;
	parameter tamano = 64;
	
	always @(posedge clk) begin 
	
			posicionYS <= (reset | enable)? posicionY: 
			(contar)? ((posicionYS == puntofinal[9:0])? 10'b0:posicionYS + 1): posicionYS;
			
			PuntoFuga = (posicionYS == puntofinal[9:0])? 7'b0 :
			((PuntoFuga != tamano[6:0])? PuntoFuga + 1:tamano[6:0]); 
		
			cuadrado1 = ( presentX > (cuadro1) & presentX <= (cuadro1[9:0] + tamano[9:0])
			         & presentY > (posicionYS) & presentY <= (posicionYS+PuntoFuga))? 1'b1:1'b0;
			
			cuadrado2 = ( presentX > (cuadro2) & presentX <= (cuadro2[9:0] + tamano[9:0])
			         & presentY > (posicionYS) & presentY <= (posicionYS+PuntoFuga))? 1'b1:1'b0;
						
			cuadrado3 = ( presentX > (cuadro3) & presentX <= (cuadro3[9:0] + tamano[9:0])
			         & presentY > (posicionYS) & presentY <= (posicionYS+PuntoFuga))? 1'b1:1'b0;
			
			cuadrado4 = ( presentX > (cuadro4) & presentX <= (cuadro4[9:0] + tamano[9:0])
			         & presentY > (posicionYS) & presentY <= (posicionYS+PuntoFuga))? 1'b1:1'b0;
			
			cuadrado5 = ( presentX > (cuadro5) & presentX <= (cuadro5[9:0] + tamano[9:0])
			         & presentY > (posicionYS) & presentY <= (posicionYS+PuntoFuga))? 1'b1:1'b0;
						
	end

	assign pixel = (video_on && maquinaOut)? 
						(pintar && cuadrado1)? colorC1[7:0]:
						(pintar && cuadrado2)? colorC2[7:0]:
						(pintar && cuadrado3)? colorC3[7:0]:
						(pintar && cuadrado4)? colorC4[7:0]:
						(pintar && cuadrado5)? colorC5[7:0]:
						 fondoT[7:0]:fondoT[7:0];
	
	assign pintar = ((cuadrado1 || cuadrado2 || cuadrado3 || cuadrado4 || cuadrado5) == 1'b1);

endmodule
