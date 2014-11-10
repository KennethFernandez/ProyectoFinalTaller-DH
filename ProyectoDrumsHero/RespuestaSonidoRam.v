`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:07:53 11/09/2014
// Design Name:   RecorreRam
// Module Name:   C:/Users/Sonia/Documents/GitHub/ProyectoFinalTaller-DH/ProyectoDrumsHero/RespuestaSonidoRam.v
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

module RespuestaSonidoRam;

	// Inputs
	reg habilitador;
	reg enable;
	reg nivel2;
	reg nivel3;
	reg boton;

	// Outputs
	wire [25:0] DireccionRAM;

	// Instantiate the Unit Under Test (UUT)
	RecorreRam uut (
		.habilitador(habilitador), 
		.DireccionRAM(DireccionRAM), 
		.enable(enable), 
		.nivel2(nivel2), 
		.nivel3(nivel3), 
		.boton(boton)
	);

	initial begin
		// Initialize Inputs
		habilitador = 0;
		enable = 0;
		nivel2 = 0;
		nivel3 = 0;
		boton = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always begin #10 habilitador = ~habilitador; end
      
endmodule

