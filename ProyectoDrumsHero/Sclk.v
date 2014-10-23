`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:40:52 10/15/2014 
// Design Name: 
// Module Name:    Sclk 
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
module Sclk(clk,clk3);
	 
   input clk;
   output reg clk3 = 0;
	 
	reg contador = 0;
	 
	 
	always @ (posedge clk) begin
	if(contador == 1) begin
		contador = 0;
		clk3=~clk3;
	end
	else contador = contador+1;
	end
	

endmodule
