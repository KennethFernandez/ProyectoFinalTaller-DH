`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:08:03 09/27/2014 
// Design Name: 
// Module Name:    Maquina_pintar 
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
module Maquina_pintar(Entrada,Salida,clk,reset,colorRes,colorBanda);
	 
	 //Nuestras entradas de los sensores
	 input [6:0] Entrada;
	 input clk,reset;
	 input [2:0] colorBanda;
	 
	 //Nuestras salidas
	 output [2:0] colorRes;
	 output [5:0] Salida; 
	 
	 //Nuestros registros de estados
	 reg [3:0] state = 0;
	 reg [3:0] next = 0;
	 
	 //Nuestros estados o parametros
	 parameter Inicial = 0;
	 parameter pintar = 1;
	 parameter pintarBandaEstatica = 2;
	 parameter pintarBanda1 = 3;
	 parameter pintarBanda2 = 4;
	 parameter pintarBanda3 = 5;
	 parameter pintarBanda4 = 6;
	 parameter pintarBanda5 = 7;
	 
	 //Si el flanco del clock se activa cambiamos de estado según sea next el estado
	 //Si el reset está en flanco entonces estado es inicial.
	 always @(posedge clk) state <= (reset)? Inicial:next; 
	 
	 //Siempre que mi estado cambie entonces
	 // Me voy a mi estado actual por el caso y haci salto de estados
	 //Según la entrada respectiva
	 always @(state or Entrada or colorBanda) begin
	 
		case(state)
		
			Inicial: next = (Entrada == 7'b0000001)? pintar:Inicial;
				
			pintar:
					  if(Entrada == 7'b0000100) next = pintarBanda1;
				else if(Entrada == 7'b0001000) next = pintarBanda2;
				else if(Entrada == 7'b0010000) next = pintarBanda3;
				else if(Entrada == 7'b0100000) next = pintarBanda4;
				else if(Entrada == 7'b1000000) next = pintarBanda5;
				else next = pintarBandaEstatica;
				 
			pintarBandaEstatica:
						if(Entrada == 7'b0000010) next = pintarBandaEstatica;
				 else if(Entrada == 7'b0000110) next = pintarBandaEstatica;
				 else if(Entrada == 7'b0001010) next = pintarBandaEstatica;
				 else if(Entrada == 7'b0010010) next = pintarBandaEstatica;
				 else if(Entrada == 7'b0100010) next = pintarBandaEstatica;
				 else if(Entrada == 7'b1000010) next = pintarBandaEstatica;
				 else next = pintar;
			
			pintarBanda1: next = (Entrada == 7'b0000100)? pintarBanda1:pintar;
			pintarBanda2: next = (Entrada == 7'b0001000)? pintarBanda2:pintar;
			pintarBanda3: next = (Entrada == 7'b0010000)? pintarBanda3:pintar;
			pintarBanda4: next = (Entrada == 7'b0100000)? pintarBanda4:pintar;
			pintarBanda5: next = (Entrada == 7'b1000000)? pintarBanda5:pintar;
	
		default: next = Inicial;
	
		endcase
	end
	 
	 //Asigno los valores de salida para saber en cual de los estados estoy.
	 assign colorRes = (state == pintarBandaEstatica)?colorBanda:
							 (state == pintar)?3'b111:3'b000;
							 
	 assign Salida[0] = (state == pintarBandaEstatica);
	 assign Salida[1] = (state == pintarBanda1);
	 assign Salida[2] = (state == pintarBanda2);
	 assign Salida[3] = (state == pintarBanda3);
	 assign Salida[4] = (state == pintarBanda4);
	 assign Salida[5] = (state == pintarBanda5);

endmodule
