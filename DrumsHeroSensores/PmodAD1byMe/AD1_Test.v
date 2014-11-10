`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:09:09 11/01/2014
// Design Name:   AD1_Controller
// Module Name:   /home/rambontanga/Documents/Xilinx Projects/PmodAD1byMe/AD1_Test.v
// Project Name:  PmodAD1byMe
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AD1_Controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AD1_Test;

	// Inputs
	reg SCLKI;
	reg aDATA1;
	reg aDATA2;

	// Outputs
	wire CS;
	wire SCLKO;
	wire [15:0] DATA1;
	wire [15:0] DATA2;

	// Instantiate the Unit Under Test (UUT)
	AD1_Controller uut (
		.SCLKI(SCLKI), 
		.CS(CS), 
		.SCLKO(SCLKO), 
		.DATA1(DATA1), 
		.DATA2(DATA2), 
		.aDATA1(aDATA1), 
		.aDATA2(aDATA2)
	);
	
	Maquina_AD1 mad1(
		.SCLKI(SCLKI),
		.CS(CS)
	);

	initial begin
		// Initialize Inputs
		#100;
		SCLKI = 0;
		aDATA1 = 0;
		aDATA2 = 0;
		// Wait 100 ns for global reset to finish
		#360;
		aDATA1 = 0;
		aDATA2 = 0;
		#20;
		aDATA1 = 1;
		aDATA2 = 1;
		#20;
		aDATA1 = 1;
		aDATA2 = 1;
		#20;
		aDATA1 = 0;
		aDATA2 = 0;
		#20;
		aDATA1 = 1;
		aDATA2 = 1;
		#20;
		aDATA1 = 1;
		aDATA2 = 1;
		#20;
		
        
		// Add stimulus here

	end
      
		always begin #10 SCLKI = ~SCLKI; end
		
endmodule

