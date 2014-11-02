`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:02:35 11/01/2014 
// Design Name: 
// Module Name:    PuntuacionTotal 
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
module PuntuacionTotal( puntuacionEntrada, puntuacionSalida, 
								enable, clk, standBy);

	input enable;
	input standBy;
	input clk;
	input [12:0] puntuacionEntrada;
	output[12:0] puntuacionSalida;
	
	reg [12:0] puntuacionMaxima = 13'b0;
	reg [7:0] contador = 8'b0;
	
	always @(posedge clk) begin
	
	if(enable) contador <= contador + 1;
	else if(contador == 8'b11111111) contador <= 8'b0;
	else contador <= contador;
	
	if(puntuacionEntrada > puntuacionMaxima) puntuacionMaxima <= puntuacionEntrada;
	else puntuacionMaxima <= puntuacionMaxima;
	
	end
	
	assign puntuacionSalida = (contador > 8'b10000000 && standBy)? puntuacionMaxima: puntuacionEntrada;
	
endmodule
