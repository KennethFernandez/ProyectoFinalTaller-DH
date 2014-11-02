`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:46:50 11/01/2014
// Design Name:   PuntuacionTotal
// Module Name:   C:/Users/Sonia/Documents/GitHub/ProyectoFinalTaller-DH/ProyectoDrumsHero/PruebaGuardarPuntuacionGlobal.v
// Project Name:  ProyectoDrumsHero
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PuntuacionTotal
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PruebaGuardarPuntuacionGlobal;

	// Inputs
	reg [12:0] puntuacionEntrada;
	reg enable;
	reg clk;
	reg standBy;

	// Outputs
	wire [12:0] puntuacionSalida;

	// Instantiate the Unit Under Test (UUT)
	PuntuacionTotal uut (
		.puntuacionEntrada(puntuacionEntrada), 
		.puntuacionSalida(puntuacionSalida), 
		.enable(enable), 
		.clk(clk),
		.standBy(standBy)
	);

	initial begin
		// Initialize Inputs
		puntuacionEntrada = 1;
		enable = 0;
		clk = 0;
		standBy = 1;

		// Wait 100 ns for global reset to finish
		#100;
		puntuacionEntrada = 10;
		
		#1000;
		puntuacionEntrada = 20;
		
		#1000;
		puntuacionEntrada = 8;
        
		// Add stimulus here

	end
	
	always begin #10 clk = ~clk; end
	always begin #20 enable = ~enable; end
      
endmodule

