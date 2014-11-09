`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:23:26 10/04/2014 
// Design Name: 
// Module Name:    Sonido 
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
module Sonido(clk, MCLK, LRCLK, SDIN, reset, transmisionIn);
	
	//el sclk va a ser de ~1.5625 MHz trabajando en el modo SCLK interno.
	input [15:0] transmisionIn;
	input clk;
	input reset;
	
	output MCLK; 
	output LRCLK; 
	output SDIN; 
	//dato leído a transmitir al DAC.
	
	wire sclk;
	//frecuencia de transmisión = LRCLK = ~48.8 KHz.
	Lrclk lrclk(
		.clk(clk),
		.clk2(sclk),
		.clk3(LRCLK)
	);
	
	TransmisionDAC transmi(
		.dataAConvertir(transmisionIn),
		.DataOut(SDIN),
		.clk(sclk),
		.reset(reset)
	);
	
	assign MCLK = clk;
	
endmodule
