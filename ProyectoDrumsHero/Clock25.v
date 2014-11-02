`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:18:16 09/03/2014 
// Design Name: 
// Module Name:    Clock25 
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
module Clock25(clk,clk25);
	
   input  clk;
   output clk25;
	 
	reg contador = 0;
	 
	always @ (posedge clk) contador = ~contador; 
	 
	assign clk25 = (contador == 1'b1);

endmodule
