`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:11:10 10/01/2014 
// Design Name: 
// Module Name:    Recortador 
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
module Recortador(Respuesta, RespuestaAclok, Clock);
	 
	 //Recorta una señal y la transforma en un ciclo de reloj nada más
    input Respuesta;
    output RespuestaAclok;
    input Clock;
	 
	 reg una = 1;
	 reg RespuestaSostenida = 0;
	 
	 //Usa el flanco de reloj para realizar la operación anteriormente descrita.
	 always @(posedge Clock)begin
	 
	 if(Respuesta & una) begin RespuestaSostenida = 1; una = 0; end
	 else if(!Respuesta) una = 1;
	 else RespuestaSostenida = 0;
	 
	 end
	 
	 assign RespuestaAclok = RespuestaSostenida;
	 
endmodule
