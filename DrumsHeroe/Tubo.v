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
	
	output [2:0] pixel;
	output pintar;
	
	output reg [9:0] posicionYS = 0;
	
	reg cuadrado1 = 0;
	reg cuadrado2 = 0;
	reg cuadrado3 = 0;
	reg cuadrado4 = 0;
	reg cuadrado5 = 0;
	reg [9:0] posXI = 0;
	
	parameter cuadro1 = 80;
	parameter cuadro2 = 176;
	parameter cuadro3 = 272;
	parameter cuadro4 = 368;
	parameter cuadro5 = 464;

	parameter colorC1 = 1;
	parameter colorC2 = 4;
	parameter colorC3 = 5;
	parameter colorC4 = 2;
	parameter colorC5 = 6;
	parameter fondoT = 7;
	
	always @(posedge clk) begin 
	
			posicionYS <= (reset | enable)? posicionY: 
			(contar)? posicionYS + 1: posicionYS;
		
			cuadrado1 = ( presentX > (cuadro1) & presentX <= (cuadro1 + 64)
			         & presentY > (posicionYS) & presentY <= (posicionYS+64))? 1:0;
			
			cuadrado2 = ( presentX > (cuadro2) & presentX <= (cuadro2 + 64)
			         & presentY > (posicionYS) & presentY <= (posicionYS+64))? 1:0;
						
			cuadrado3 = ( presentX > (cuadro3) & presentX <= (cuadro3 + 64)
			         & presentY > (posicionYS) & presentY <= (posicionYS+64))? 1:0;
			
			cuadrado4 = ( presentX > (cuadro4) & presentX <= (cuadro4 + 64)
			         & presentY > (posicionYS) & presentY <= (posicionYS+64))? 1:0;
			
			cuadrado5 = ( presentX > (cuadro5) & presentX <= (cuadro5 + 64)
			         & presentY > (posicionYS) & presentY <= (posicionYS+64))? 1:0;
						
	end

	assign pixel = (video_on && maquinaOut)? 
						(pintar && cuadrado1)? colorC1:
						(pintar && cuadrado2)? colorC2:
						(pintar && cuadrado3)? colorC3:
						(pintar && cuadrado4)? colorC4:
						(pintar && cuadrado5)? colorC5:
						 fondoT:fondoT;
	
	assign pintar = ((cuadrado1 || cuadrado2 || cuadrado3 || cuadrado4 || cuadrado5) == 1);

endmodule
