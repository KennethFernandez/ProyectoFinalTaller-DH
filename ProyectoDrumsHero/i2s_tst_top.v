`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:29:54 08/25/2008 
// Design Name: 
// Module Name:    i2s_tst 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module i2s_tst_top(clk, btn1,btn2,btn3,btn4, Led, JA);
	input clk;				            // 50MHz oscillator
	input	 btn1,btn2,btn3,btn4;		// Capsense pads
	output [3:0] Led; 	// LEDs
	output [3:0] JA;		// Digilent socket JA - I2S DAC


	
	// Clock divider
	reg clk2;
	always @(posedge clk)
		clk2 <= ~clk2;
	
	// Instance of I2S test module
	i2s_tst
		ui2stst(.clk(clk2), .reset(btn4),
			.btn({ btn1,btn2,btn3}),
			.led(Led),
			.mclk(JA[0]),
			.sclk(JA[2]),
			.lrck(JA[1]),
			.sdout(JA[3])
		);
endmodule
