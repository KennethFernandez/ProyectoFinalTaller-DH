`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:53:26 09/02/2014 
// Design Name: 
// Module Name:    Filtro 
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
module Filtro(Activadores,Entrada,Salida);

// Este se encarga de que no aparezcan letras en los 7 segmentos
	 // Si se pasa de diez cambia el valor y asgina el del otro bloque.
    input [3:0] Activadores;
	 input wire [15:0] Entrada;
    output reg [3:0] Salida = 0;
	 
	 always @ (Activadores or Entrada)begin

	 if(Activadores == 4'b0111) Salida <= Entrada[3:0];
	 else if(Activadores == 4'b1011) Salida <= Entrada[7:4];
	 else if(Activadores == 4'b1101) Salida <= Entrada[11:8];
	 else if(Activadores == 4'b1110) Salida <= Entrada[15:12];
	 else Salida <= 0;
	 
	 end
	

endmodule
