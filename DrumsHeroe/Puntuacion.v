`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:00:08 09/29/2014 
// Design Name: 
// Module Name:    Puntuacion 
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
module Puntuacion(posBP1,posL1,posL2,posL3,posL4,posL5,clk,puntuacion,perdio,reset);

	input [9:0] posBP1;
	input [9:0] posL1;
	input [9:0] posL2;
	input [9:0] posL3; 
	input [9:0] posL4;
	input [9:0]	posL5;
	input reset;
	input clk;
	
	wire posBP1Final = posBP1 + 64;
	
	output reg [12:0] puntuacion = 0;
	output perdio;
	reg [3:0] teclasPasadas;
	
	always @( posedge clk) begin
	
	if(reset) puntuacion  <= 0;
	else if (posL1 == posBP1 | posL2 == posBP1 | 
				posL3 == posBP1 | posL4 == posBP1 | posL4 == posBP1) 
		  puntuacion <= puntuacion + 1;
	else puntuacion <= puntuacion;
	
	if(reset) teclasPasadas <= 0;
	else if (posL1 == posBP1Final | posL2 == posBP1Final | 
		 posL3 == posBP1Final | posL4 == posBP1Final | 
		 posL4 == posBP1Final) 
		  teclasPasadas <= teclasPasadas + 1;
	else teclasPasadas <= teclasPasadas;
	
	end
	
	assign perdio = (teclasPasadas == 5)? 1'b1: 1'b0;

endmodule
