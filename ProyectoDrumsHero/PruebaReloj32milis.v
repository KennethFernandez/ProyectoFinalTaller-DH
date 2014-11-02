`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:20:38 11/02/2014
// Design Name:   clock32pps
// Module Name:   C:/Users/Sonia/Documents/GitHub/ProyectoFinalTaller-DH/ProyectoDrumsHero/PruebaReloj32milis.v
// Project Name:  ProyectoDrumsHero
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock32pps
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PruebaReloj32milis;

	// Inputs
	reg clk;
	reg stop;
	reg nivel2;
	reg nivel3;

	// Outputs
	wire clk32;

	// Instantiate the Unit Under Test (UUT)
	clock32pps uut (
		.clk(clk), 
		.clk32(clk32), 
		.stop(stop), 
		.nivel2(nivel2), 
		.nivel3(nivel3)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		stop = 1;
		nivel2 = 0;
		nivel3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always begin #1 clk = ~clk; end
      
endmodule

