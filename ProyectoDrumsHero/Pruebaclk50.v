`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:00:38 10/19/2014
// Design Name:   Clock25
// Module Name:   C:/Users/Sonia/Documents/GitHub/ProyectoFinalTaller-DH/DrumsHeroe/Pruebaclk50.v
// Project Name:  DrumsHeroe
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Clock25
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Pruebaclk50;

	// Inputs
	reg clk;

	// Outputs
	wire clk25;

	// Instantiate the Unit Under Test (UUT)
	Clock25 uut (
		.clk(clk), 
		.clk25(clk25)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always begin #10 clk = ~clk; end
      
endmodule

