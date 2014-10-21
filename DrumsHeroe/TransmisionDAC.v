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
module TransmisionDAC(input [23:0] dataAConvertir, output DataOut, input clk, output signal, input reset
    );
	
	reg cont = 0;
	reg [4:0] contBit = 23;
	
	always @ (posedge clk or posedge reset) begin
	if(reset) begin
		contBit <= 23;
		cont <= 0;
	end
	else if(cont == 1) begin
		cont <= 0;
		if(contBit == 0) contBit <= 23;
		else begin
			contBit <= contBit - 1;
		end
	end
	else cont <= cont+1;
	end
	
	assign DataOut = dataAConvertir[contBit];
	assign signal = (contBit == 0 ? 1 : 0);
endmodule
