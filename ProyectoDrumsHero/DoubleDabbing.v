`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:24:26 09/02/2014 
// Design Name: 
// Module Name:    DoubleDabbing 
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
module DoubleDabbing(Entrada,Salidas,clk,reset);
	 
   input [12:0] Entrada;
	input clk;
	input reset;
	
	output [15:0] Salidas;
	
	reg [4:0] contador = 0;
	reg [28:0] Registro = 0;
	reg [12:0] EntradaTemp = 0;

	always@(posedge clk)begin

	if(reset) begin 
	Registro = 0; 
	contador = 0; 
	EntradaTemp = 0;end
	else if(Entrada != EntradaTemp)begin 
	Registro = {16'b0,Entrada}; 
	contador = 0;
	EntradaTemp = Entrada; end
	else if(Registro[12:0] == 0 && contador == 13) begin 
	Registro = Registro; 
	contador = 13; 
	EntradaTemp = EntradaTemp;end
	else begin 
	
	if( Registro[28:25] > 4 )Registro[28:25] = {Registro[28:25] + 3}[3:0];
	if( Registro[24:21] > 4 )Registro[24:21] = {Registro[24:21] + 3}[3:0];
	if( Registro[20:17] > 4 )Registro[20:17] = {Registro[20:17] + 3}[3:0];
	if( Registro[16:13] > 4 )Registro[16:13] = {Registro[16:13] + 3}[3:0];
	
	Registro = (Registro)<<1;
	contador = {contador + 1}[4:0]; 
	EntradaTemp = Entrada;end

	end
	
	assign Salidas = Registro[28:13];
	
endmodule

