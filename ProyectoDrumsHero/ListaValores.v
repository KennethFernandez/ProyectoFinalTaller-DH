`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:15:31 10/21/2014 
// Design Name: 
// Module Name:    ListaValores 
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
module ListaValores(RandomSalida, clk);
	 
	 input clk;
	 output reg [4:0] RandomSalida;
	 wire [3:0] RandomEntrada;
	 
	 RandomFourBits randomCuatro(.out(RandomEntrada),.clk(clk));

	 
	 always @ (RandomEntrada) begin
	 
	 case (RandomEntrada)
	 
		4'b0001: RandomSalida <= 5'b00001;
		4'b0010: RandomSalida <= 5'b00010;
		4'b0011: RandomSalida <= 5'b00011;
		4'b0100: RandomSalida <= 5'b00100;
		4'b0101: RandomSalida <= 5'b00101;
		4'b0110: RandomSalida <= 5'b00110;
		4'b0111: RandomSalida <= 5'b01000;
		4'b1000: RandomSalida <= 5'b01001;
		4'b1001: RandomSalida <= 5'b01010;
		4'b1010: RandomSalida <= 5'b01100;
		4'b1011: RandomSalida <= 5'b10000;
		4'b1100: RandomSalida <= 5'b10001;
		4'b1101: RandomSalida <= 5'b10010;
		4'b1110: RandomSalida <= 5'b10100;
		4'b1111: RandomSalida <= 5'b11000;
	 
		default: RandomSalida <= 5'b00001;
	 
	 endcase

	end
		
endmodule
