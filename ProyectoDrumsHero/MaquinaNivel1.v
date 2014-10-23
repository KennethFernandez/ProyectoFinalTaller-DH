`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:40:43 09/29/2014 
// Design Name: 
// Module Name:    MaquinaNivel1 
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
module MaquinaNivel1(Iniciar,Perdio,Comenzar,Reiniciar,clk,Stop);

	input Iniciar;
	input Perdio;
	input clk;
	
	 output Comenzar;
	 output Reiniciar;
	 output Stop;
	 
	 //Nuestros registros de estados
	 reg state = 0;
	 reg next = 0;
	 
	 //Nuestros estados o parametros
	 parameter Inicial = 0;
	 parameter Jugando = 1;
	 
	 //Si el flanco del clock se activa cambiamos de estado según sea next el estado
	 //Si el reset está en flanco entonces estado es inicial.
	 always @(posedge clk) state <= next;
	 
	 
	 always @(state or Iniciar or Perdio) begin
	 
		case(state)
		
			Inicial: 
				if(Iniciar) begin
				next = Jugando;end
				else 	begin				
				next = Inicial;end
				
			Jugando:
				if(Perdio) begin 
				next = Iniciar;end
				else begin 
				next = Jugando; end
	
		default: next = Inicial;
	
		endcase
	end
	
	assign Comenzar = (Iniciar == 1);
	assign Reiniciar = (Perdio == 1 & state == Jugando);
	assign Stop = (state == Inicial);

endmodule
