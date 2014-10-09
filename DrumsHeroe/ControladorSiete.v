`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:54:36 09/02/2014 
// Design Name: 
// Module Name:    ControladorSiete 
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
module ControladorSiete(Salida, Entrada);

//Modulo para mostrar en el display el dato que se desea
  output reg [6:0] Salida;
  input  [3:0] Entrada;
 
  always @(Entrada)
    case (Entrada)
      4'h0: Salida <= 7'b1000000;
      4'h1: Salida <= 7'b1111001;
      4'h2: Salida <= 7'b0100100;
      4'h3: Salida <= 7'b0110000;
      4'h4: Salida <= 7'b0011001;
      4'h5: Salida <= 7'b0010010;
      4'h6: Salida <= 7'b0000010;
      4'h7: Salida <= 7'b1111000;
      4'h8: Salida <= 7'b0000000;
      4'h9: Salida <= 7'b0011000;
      4'hA: Salida <= 7'b0001000;
      4'hB: Salida <= 7'b0000011;
      4'hC: Salida <= 7'b1000110;
      4'hD: Salida <= 7'b0100001;
      4'hE: Salida <= 7'b0000110;
      4'hF: Salida <= 7'b0001110;
      default: Salida <= Salida;
    endcase

endmodule
