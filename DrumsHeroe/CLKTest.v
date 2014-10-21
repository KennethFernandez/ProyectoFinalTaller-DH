`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:59:42 10/15/2014
// Design Name:   Lrclk
// Module Name:   C:/Users/Rodrigo/Documents/GitHub/ProyectoFinalTaller-DH/DrumsHeroe/CLKTest.v
// Project Name:  DrumsHeroe
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Lrclk
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLKTest;

	// Inputs
	reg clk;

	// Outputs
	wire clk3;

	// Instantiate the Unit Under Test (UUT)
	Lrclk uut (
		.clk(clk), 
		.clk3(clk3)
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

