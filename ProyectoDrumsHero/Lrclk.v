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
module Lrclk(clk,clk2,clk3);
	 
   input clk;
   output clk3;
	reg clk3 = 0;
	output clk2;
	reg clk2 = 0;
	reg[8:0] contador = 0;
	 
	 
	always @ (posedge clk) begin
	if(contador%16 == 15) clk2 = ~clk2;
	if(contador == 511) begin clk3 = ~clk3; contador <= 0; end
	else contador <= contador+9'b1;
	end
	
endmodule
