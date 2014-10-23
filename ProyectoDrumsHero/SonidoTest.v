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
	reg [23:0] transmisionIn;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	Sonido uut (
		.clk(clk), 
		.MCLK(MCLK), 
		.LRCLK(LRCLK), 
		.SDIN(SDIN), 
		.gnd(gnd), 
		.vcc(vcc),
		.transmisionIn(transmisionIn),
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		transmisionIn=0;
		reset = 1;
		#60 reset = 0;
		// Wait 100 ns for global reset to finish
		#3800 transmisionIn = 101;
		#3860 transmisionIn = 24'b100000000000000000000000;
		#3860 transmisionIn = 301;
        
		// Add stimulus here

	end
      
		always begin #10 clk = ~clk; end
endmodule

