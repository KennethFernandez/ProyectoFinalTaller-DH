`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:08:28 10/15/2014 
// Design Name: 
// Module Name:    TransmisionDAC 
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
module TransmisionDAC(input [15:0] dataAConvertir, output DataOut, input clk, input reset
    );
	
	wire [15:0] data = dataAConvertir;
	reg [3:0] contBit = 4'b1111;
	reg [15:0] datos = 16'b0;
	
	always @ (negedge clk) begin
		if(reset)
			contBit <= 4'b1111;
		else
			if(contBit == 16'b0) begin
				datos <= data;
				contBit <= 4'b1111; end
			else
				contBit <= contBit - 4'b1;
	end
	
	assign DataOut = datos[contBit];
endmodule
