`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:26 09/06/2014 
// Design Name: 
// Module Name:    RAM 
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
module RAM(DireccionIn,DireccionOut,clock,ADV,CE,ReadE,WriteE,LB,UB,WAIT,Data,LeerOEscribir,Datos);
	 
	 // Es las direcciones de salida para la Ram
	 output [22:0] DireccionOut;
	 // Es el puerto de ADV de la ram
    output ADV;
	 // Es el chip enable de la ram
    output CE;
	 // Es el puerto de lectura
    output ReadE;
	 // Es el puerto de escritura
    output WriteE;
	 // Es el low byte de la parte de la memoria
    output LB;
	 // Es el upper byte de la parte 
    output UB;
	 // Es el clock del la entrada
	 input clock;
	 // Es la señal wait de si puede escribir
    input WAIT;
	 // Es un valor que dice que si hay que escribir o leer para que no haga lo mimso
	 input LeerOEscribir;
	 // Los datos que voy a escribir
	 input [15:0] Datos;
	 // La dirreción que le entra 
	 input [22:0] DireccionIn;
	 
	 // La data que se escribe en la ram
    inout [15:0] Data;
	 
	 // Son los registros que llevan lo del lectura y escritura
	 reg WR, WRNext = 0;
	 // Es el registro que lleva la data temporal
	 reg [15:0] dataTemp = 0;
	 
	 // Es el ciclo principla para que se escriba o lear
	 always@(posedge clock) begin
	 
	 //  Aquí se asigna el siguiente valor de escritura o lectura
		WR <=  WRNext;
	   if(!WRNext && WAIT) begin dataTemp <= Datos; end
	   else dataTemp <= 16'b0;
		
	 end
	 
	 // Si se cambia el valor entonces se activa
	 always@(WR or LeerOEscribir) begin
	 
	 WRNext= (LeerOEscribir)? 1 :0 ;
	 
	 end
	
	// Asignamos las salidas
	 assign DireccionOut = DireccionIn;
	 assign Data = dataTemp;
	 assign WriteE = WR;
	 assign ReadE  = ~WR;
	 assign CE  = 0;
	 assign LB = 0;
	 assign UB = 0;
	 assign ADV = 0;
	 
endmodule
