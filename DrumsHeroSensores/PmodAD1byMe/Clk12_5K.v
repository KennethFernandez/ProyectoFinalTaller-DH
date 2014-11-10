`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:07:28 11/03/2014 
// Design Name: 
// Module Name:    CLK10K 
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
module Clk12_5K(CLK, CLK12_5K
    );
	 
input wire CLK;
output reg  CLK12_5K = 0;
	 
reg [11:0] count = 0; //Cuenta de 0 a 3999 para una frecuencia de 12.5kHz
	 
always @(posedge CLK) begin
	count <= (count == 3999) ? 0 : count + 13'b1;
	CLK12_5K <= (count == 3999) ? ~CLK12_5K : CLK12_5K;
end


endmodule
