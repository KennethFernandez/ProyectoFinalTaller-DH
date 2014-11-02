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
module clock32pps(clk,clk32,stop,nivel2,nivel3,clk32SinStop);

    input clk;
	 input stop;
    output clk32;
	 output clk32SinStop;
	 input nivel2;
	 input nivel3;
	 
	 reg [18:0] contador = 0;
	 reg [18:0] sigcontador = 0;
	 
	 //Usa el flanco de reloj para realizar la operación anteriormente descrita.
	 always @(posedge clk) sigcontador <= contador;
	 
	 always @(sigcontador or nivel2 or nivel3)begin

	 if(sigcontador == (500000 - 250000*nivel2 - 125000*nivel3)) contador = 0;
	 else contador = sigcontador + 1;

	 end
	 
	 assign clk32 = (!stop)?(contador == (500000- 250000*nivel2 - 125000*nivel3)):1'b0;
	 assign clk32SinStop = (contador == (500000- 250000*nivel2 - 125000*nivel3));

endmodule
