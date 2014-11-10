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
	
    input clk;
    output reg clk25 = 0;
	 
	 reg[1:0] contador = 0;
	 wire dosciclos;
	 
	 always @ (posedge clk) begin
	 contador <= (dosciclos == 1'b1)? 2'b00:contador + 1; 
	 clk25 <= dosciclos;
	 end
	 
	assign dosciclos = (contador == 2'b01);

endmodule
