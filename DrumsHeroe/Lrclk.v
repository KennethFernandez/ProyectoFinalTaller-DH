`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:45:14 10/08/2014 
// Design Name: 
// Module Name:    Lrclk 
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
module Lrclk(clk,clk3);
	 
   input clk;
   output reg clk3 = 0;
	 
	reg[7:0] contador = 0;
	 
	 
	always @ (posedge clk) begin
	if(contador == 24) begin
		contador = 0;
		clk3=~clk3;
	end
	else contador = contador+1;
	end
	

endmodule
