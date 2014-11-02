`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:00:08 09/29/2014 
// Design Name: 
// Module Name:    Puntuacion 
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
module Puntuacion(posBP1,posL1,posL2,posL3,posL4,clk,puntuacion,perdio,reset,
						botonesBaq,leds,linea1,linea2,linea3,linea4);

	input [9:0] posBP1;
	input [9:0] posL1;
	input [9:0] posL2;
	input [9:0] posL3; 
	input [9:0] posL4;
	input [4:0] botonesBaq;
	input [4:0] linea1;
	input [4:0] linea2;
	input [4:0] linea3;
	input [4:0] linea4;
	input reset;
	input clk;
	
	wire posBP1Final = posBP1 + 64;
	
	output reg [12:0] puntuacion = 13'b0;
	reg [12:0] puntuacionPasadas = 13'b0;
	output perdio;
	
	output [4:0] leds;
   reg [3:0] LineaLista = 4'b0;
	reg [3:0] teclasPasadas = 4'b0;
	
	always @( posedge clk) begin
	
	if(reset) begin puntuacion  <= 0; LineaLista <= 4'b0000; teclasPasadas <= 0; end
	
	else if (posL1 == 0)
	begin LineaLista[0] <= 1'b0; puntuacion <= puntuacion; teclasPasadas <= teclasPasadas;end
	else if (posL2 == 0)
	begin LineaLista[1] <= 1'b0; puntuacion <= puntuacion; teclasPasadas <= teclasPasadas;end
	else if (posL3 == 0)
	begin LineaLista[2] <= 1'b0; puntuacion <= puntuacion; teclasPasadas <= teclasPasadas;end
	else if (posL4 == 0)
	begin LineaLista[3] <= 1'b0; puntuacion <= puntuacion; teclasPasadas <= teclasPasadas;end
	
	else if (posL1 == 479 && !LineaLista[0])
	begin LineaLista[0] <= 1'b1; puntuacion <= puntuacion; teclasPasadas <= {teclasPasadas+1}[3:0];end
	else if (posL2 == 479 && !LineaLista[1])
	begin LineaLista[1] <= 1'b1; puntuacion <= puntuacion; teclasPasadas <= {teclasPasadas+1}[3:0];end
	else if (posL3 == 479 && !LineaLista[2])
	begin LineaLista[2] <= 1'b1; puntuacion <= puntuacion; teclasPasadas <= {teclasPasadas+1}[3:0];end
	else if (posL4 == 479 && !LineaLista[3])
	begin LineaLista[3] <= 1'b1; puntuacion <= puntuacion; teclasPasadas <= {teclasPasadas+1}[3:0];end
	
	else if ((posL1 + 64 > posBP1 | posL1 < posBP1Final) && linea1 == botonesBaq && !LineaLista[0]) 
	begin puntuacion <= {puntuacion+1}[12:0]; LineaLista[0] <= 1'b1; teclasPasadas <= teclasPasadas;end
	else if ((posL2 + 64 > posBP1 | posL2 < posBP1Final) && linea2 == botonesBaq && !LineaLista[1]) 
	begin puntuacion <= {puntuacion+1}[12:0]; LineaLista[1] <= 1'b1; teclasPasadas <= teclasPasadas;end
	else if ((posL3 + 64 > posBP1 | posL3 < posBP1Final) && linea3 == botonesBaq && !LineaLista[2]) 
	begin puntuacion <= {puntuacion+1}[12:0]; LineaLista[2] <= 1'b1; teclasPasadas <= teclasPasadas;end
	else if ((posL4 + 64 > posBP1 | posL4 < posBP1Final) && linea4 == botonesBaq && !LineaLista[3]) 
	begin puntuacion <= {puntuacion+1}[12:0]; LineaLista[3] <= 1'b1; teclasPasadas <= teclasPasadas;end
	
	else begin puntuacion <= puntuacion; LineaLista <= LineaLista; teclasPasadas <= teclasPasadas;end
	
	end
	
	assign perdio = (teclasPasadas == 5)? 1'b1: 1'b0;
	
	assign leds = (teclasPasadas == 5)? 5'b00000:
					  (teclasPasadas == 4)? 5'b10000:
					  (teclasPasadas == 3)? 5'b11000:
					  (teclasPasadas == 2)? 5'b11100:
					  (teclasPasadas == 1)? 5'b11110:
					  (teclasPasadas == 0)? 5'b11111:5'b11111;

endmodule
