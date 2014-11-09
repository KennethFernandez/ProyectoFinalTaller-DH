`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:25 11/08/2014 
// Design Name: 
// Module Name:    RecorreRam 
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
module RecorreRam(habilitador,DireccionRAM,enable);
	 
	 input habilitador;
	 input enable;
	 output reg [25:0] DireccionRAM = 26'b0;
	 
	 always @(negedge habilitador)
	 
	 DireccionRAM <= (DireccionRAM <= 26'b10101011100101111011100000 & !enable)? DireccionRAM + 2: 26'b0;
	 

endmodule
