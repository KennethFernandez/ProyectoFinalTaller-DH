`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:22:02 11/04/2014
// Design Name:   PmodAD1GGWP
// Module Name:   /home/rambontanga/Documents/Xilinx Projects/PmodAD1byMe/GGWP_Test.v
// Project Name:  PmodAD1byMe
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PmodAD1GGWP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module GGWP_Test;

	// Inputs
	reg CLK;
	reg dDATA1;
	reg dDATA2;

	// Outputs
	wire [15:0] DATA1;
	wire [15:0] DATA2;
	wire CS;
	wire CLK12_5K;
	wire [7:0] led;

	// Instantiate the Unit Under Test (UUT)
	PmodAD1GGWP uut (
		.CLK(CLK), 
		.dDATA1(dDATA1), 
		.dDATA2(dDATA2), 
		.DATA1(DATA1), 
		.DATA2(DATA2), 
		.CS(CS), 
		.CLK12_5K(CLK12_5K), 
		.led(led)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		dDATA1 = 0;
		dDATA2 = 0;

		// Wait 100 ns for global reset to finish
		#1240000;
		dDATA1 = 1;
		dDATA2 = 1;
		#1240000;
		dDATA1 = 0;
		dDATA2 = 0;
		
        
		// Add stimulus here

	end
	
	always begin #5 CLK = ~CLK; end
      
endmodule

