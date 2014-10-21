`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:52:00 09/02/2014 
// Design Name: 
// Module Name:    SelectorM 
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
module SelectorM(clk,Activadores);

	 //Refrescador de lo mostrado en los siete segmentos
	 // en la tarjeta
    input clk;
    output reg [3:0] Activadores = 14;
	 
	 reg [10:0] contador = 0;
	 
	 parameter Primero = 400;
	 parameter Segundo = 800;
	 parameter Tercero = 1200;
	 parameter Cuarto  = 1600;
	 
	 always @( posedge clk )
	 begin
	 
	 if( contador != 2000)
		       contador <= {contador + 1}[10:0];
	 else     contador <=  0;
	 
	 case(contador) 
		
		Primero: Activadores <= 4'b0111;
		Segundo: Activadores <= 4'b1011;
		Tercero: Activadores <= 4'b1101;
		Cuarto:  Activadores <= 4'b1110;
		
		default: Activadores <= Activadores;
	
	 endcase
	 
	 end

endmodule
