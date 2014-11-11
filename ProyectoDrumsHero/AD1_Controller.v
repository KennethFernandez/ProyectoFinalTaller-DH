`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:34:38 10/31/2014 
// Design Name: 
// Module Name:    AD1_Controller 
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
module AD1_Controller(SCLK, CS, DATA1, DATA2, dDATA1, dDATA2);
output reg [15:0] DATA1 = 0;
output reg [15:0] DATA2 = 0;
input wire CS;
input wire SCLK;
input dDATA1;
input dDATA2;

always @(negedge SCLK)begin
	DATA1 = (CS == 0) ? {DATA1[14:0] ,dDATA1} : 16'b0;
	DATA2 = (CS == 0) ? {DATA2[14:0] ,dDATA2} : 16'b0;
end

endmodule
