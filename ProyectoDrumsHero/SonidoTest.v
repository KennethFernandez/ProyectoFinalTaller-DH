`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:30:33 10/15/2014
// Design Name:   Sonido
// Module Name:   C:/Users/Rodrigo/Documents/GitHub/ProyectoFinalTaller-DH/DrumsHeroe/SonidoTest.v
// Project Name:  DrumsHeroe
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sonido
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SonidoTest;

	// Inputs
	reg clk;

	// Outputs
	wire MCLK;
	wire LRCLK;
	wire SDIN;
	wire gnd;
	wire vcc;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	Sonido uut (
		.clk(clk), 
		.MCLK(MCLK), 
		.LRCLK(LRCLK), 
		.SDIN(SDIN),
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		reset = 1;
		#20 reset = 0;
		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
		always begin #5 clk = ~clk; end
endmodule

