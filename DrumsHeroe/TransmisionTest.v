`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:19:00 10/15/2014
// Design Name:   TransmisionDAC
// Module Name:   C:/Users/Rodrigo/Documents/GitHub/ProyectoFinalTaller-DH/DrumsHeroe/TransmisionTest.v
// Project Name:  DrumsHeroe
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TransmisionDAC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TransmisionTest;

	// Inputs
	reg [23:0] dataAConvertir;
	reg clk;

	// Outputs
	wire DataOut;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	TransmisionDAC uut (
		.dataAConvertir(dataAConvertir), 
		.DataOut(DataOut), 
		.clk(clk),
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		dataAConvertir = 0;
		clk = 1;
		reset = 1;
		#20 reset = 0;
		// Wait 100 ns for global reset to finish
		#940 dataAConvertir = 101;
		#960 dataAConvertir = 24'b100000000000000000000000;
		#960 dataAConvertir = 301;
      
		// Add stimulus here

	end
	always begin #10 clk = ~clk; end
      
endmodule

