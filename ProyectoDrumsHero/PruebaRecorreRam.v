`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:31:57 11/08/2014
// Design Name:   RecorreRam
// Module Name:   C:/Users/Sonia/Documents/GitHub/ProyectoFinalTaller-DH/ProyectoDrumsHero/PruebaRecorreRam.v
// Project Name:  ProyectoDrumsHero
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RecorreRam
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PruebaRecorreRam;

	// Inputs
	reg habilitador;
	reg stop;

	// Outputs
	wire [25:0] DireccionRAM;

	// Instantiate the Unit Under Test (UUT)
	RecorreRam uut (
		.habilitador(habilitador), 
		.DireccionRAM(DireccionRAM),
		.enable(stop)
	);

	initial begin
		// Initialize Inputs
		habilitador = 0;
		stop = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		stop = 0;
        
		// Add stimulus here

	end
	
	always begin #20 habilitador = ~habilitador; end
      
endmodule

