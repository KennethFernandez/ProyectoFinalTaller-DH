`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:55:41 11/03/2014
// Design Name:   CLK10K
// Module Name:   /home/rambontanga/Documents/Xilinx Projects/PmodAD1byMe/clk10_test.v
// Project Name:  PmodAD1byMe
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLK10K
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clk10_test;

	// Inputs
	reg clk;

	// Outputs
	wire clk10k;

	// Instantiate the Unit Under Test (UUT)
	Clk12_5K uut (
		.CLK(clk), 
		.CLK12_5K(clk10k)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      always begin #5 clk = ~clk; end
		
endmodule

