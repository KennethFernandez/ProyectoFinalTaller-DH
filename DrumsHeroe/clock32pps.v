`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:18 09/27/2014 
// Design Name: 
// Module Name:    clock32pps 
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
module clock32pps(clk,clk32,stop,nivel2,nivel3);

    input clk;
	 input stop;
    output clk32;
	 input nivel2;
	 input nivel3;
	 
	 reg [18:0] contador,sigcontador;
	 
	 //Usa el flanco de reloj para realizar la operación anteriormente descrita.
	 always @(posedge clk)begin
	 
	 if(stop) sigcontador <= 0;
	 else sigcontador <= contador;
	 
	 end
	 
	 always @(sigcontador or nivel2 or nivel3)begin

	 if(sigcontador == (500000 - 250000*nivel2 - 125000*nivel3)) contador = 0;
	 else contador = sigcontador + 1;

	 end
	 
	 assign clk32 = (contador == (500000- 250000*nivel2 - 125000*nivel3));

endmodule
