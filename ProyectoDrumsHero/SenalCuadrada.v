`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:49:09 10/19/2014 
// Design Name: 
// Module Name:    SenalCuadrada 
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
module SenalCuadrada(clk, data, reset);
	 
	 //3FFF para alto
	 //E001 para bajo
	input clk;
   input reset;
	output reg [15:0] data= 0;
	 
	reg [5:0] contador = 0;
	 
	 
	always @ (posedge clk or posedge reset) begin
	if(reset == 1) begin
		contador = 0;
		data = 0;
	end
	else if(contador == 40) begin
		if(data == 8191) data= 0;
		else if(data == 0) data = 8191;
		contador = 0;
	end
	else contador = contador+4'b1;
	end


endmodule
