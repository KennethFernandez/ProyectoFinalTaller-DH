`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:19:53 09/16/2014 
// Design Name: 
// Module Name:    RandomTenBits 
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
module RandomFourBits(out, clk);
	
	input clk;
	output reg [3:0] out = 1;
	
	always @(posedge clk) begin
		out[3:1] <= out[2:0];
		out[0] <= (out[3] ^out[2]);
	end


endmodule
