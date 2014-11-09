`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:00:53 11/08/2014
// Design Name:   Lrclk
// Module Name:   C:/Users/Sonia/Documents/GitHub/ProyectoFinalTaller-DH/ProyectoDrumsHero/pruebaLrck.v
// Project Name:  ProyectoDrumsHero
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

module pruebaLrck;

	// Inputs
	reg clk;

	// Outputs
	wire clk2;
	wire clk3;

	// Instantiate the Unit Under Test (UUT)
	Lrclk uut (
		.clk(clk), 
		.clk2(clk2), 
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

