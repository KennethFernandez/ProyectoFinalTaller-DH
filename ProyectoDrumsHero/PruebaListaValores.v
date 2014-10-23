`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:36:43 10/21/2014
// Design Name:   ListaValores
// Module Name:   C:/Users/Sonia/Documents/GitHub/ProyectoFinalTaller-DH/ProyectoDrumsHero/PruebaListaValores.v
// Project Name:  ProyectoDrumsHero
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ListaValores
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PruebaListaValores;

	// Inputs
	reg clk;

	// Outputs
	wire [4:0] RandomSalida;

	// Instantiate the Unit Under Test (UUT)
	ListaValores uut (
		.RandomSalida(RandomSalida), 
		.clk(clk)
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

