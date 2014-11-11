`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:25 11/08/2014 
// Design Name: 
// Module Name:    RecorreRam 
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
module RecorreRam(habilitador,DireccionRAM,enable,nivel2,nivel3,boton);
	 
	 input habilitador;
	 input enable;
	 input boton;
	 input nivel2,nivel3;
	 output [25:0] DireccionRAM;
	 reg [25:0] DireccionRAMTemp1 = 26'b0;
	 reg [25:0] DireccionRAMTemp2 = 26'b00001010000101111111110000;
	 
	 always @(negedge habilitador) begin 
	 
	 // 26'b00001010000101111111110000
	 // 26'd2646000
	 // Inicial : 26'H0
	 
	 DireccionRAMTemp1 <= ( DireccionRAMTemp1 <= 26'b00001010000101111111110000 & !enable)? 
							DireccionRAMTemp1 + 2 + nivel2 + nivel3: 26'b0;
							
	end
							
	always @(posedge habilitador) begin 
	 
	 // 26'b00100000000000000000000000
	 // 26'd8388608
	 // 26'H285FF0
	 
	 
	 DireccionRAMTemp2 <= (boton & DireccionRAMTemp2 == 26'b0 & !enable)? 26'b1: 
							    (DireccionRAMTemp2 >= 26'b00000000000000000000000001 &
								  DireccionRAMTemp2 <= 26'b00000000011000000000000000 & !enable)? 
							    DireccionRAMTemp2 + 3 + nivel2 + nivel3: 26'b0;
							
	end
	
	assign DireccionRAM = (habilitador)? DireccionRAMTemp2: DireccionRAMTemp1;
	 

endmodule
