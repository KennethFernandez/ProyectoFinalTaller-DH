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
module Sonido(input clk, output MCLK, output LRCLK, output SDIN, output gnd, output vcc, input [23:0] transmisionIn, input reset
   );
	
	//el sclk va a ser de ~1.5625 MHz trabajando en el modo SCLK interno.
	
	
	//dato leído a transmitir al DAC.
	
	wire signal;
	wire sclk;
	//frecuencia de transmisión = LRCLK = ~48.8 KHz.
	Lrclk lrclk(
		.clk(clk),
		.clk3(LRCLK)
	);
	
	Sclk sclok(
		.clk(clk),
		.clk3(sclk)
	);
	
	TransmisionDAC transmi(
		.dataAConvertir(transmisionIn),
		.DataOut(SDIN),
		.clk(sclk),
		.signal(signal),
		.reset(reset)
	);
	
	
	
	assign MCLK = clk;
	assign vcc = 1;
	assign gnd = 0;
endmodule
