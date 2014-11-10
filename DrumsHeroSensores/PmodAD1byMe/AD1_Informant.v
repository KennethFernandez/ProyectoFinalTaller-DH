`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:04:28 11/06/2014 
// Design Name: 
// Module Name:    AD1_Informant 
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
module AD1_Informant(clk, calibrate, DATA, soundIndicator, soundLevel
    );
input wire clk;
input wire calibrate;
input wire [15:0] DATA;//Datos de entrada
output reg soundIndicator;//Indica si el modulo supero la sensibilidad minima
output reg [6:0] soundLevel;//Niveles de Intensidad

reg [7:0] threshold = 0;//Entrada que indica cual es el valor en que el sensor
								  //se mantiene estable
reg [7:0] soundLevelTmp;

always @(posedge clk) begin//Se calibran las entradas del tambor a un valor estable
	threshold = calibrate == 1 ? DATA[9:2] : threshold;
end

always @(DATA)begin
	if(DATA[9:2] > threshold)begin
		soundIndicator <= (DATA[9:2] - threshold > 5) ? 1 : 0;
		soundLevel <= (DATA[9:2] - threshold > 5) ? (DATA[9:2] - threshold) : 0;
	end
	else begin
		soundIndicator <= 0;
		soundLevel <= 0;
	end
end

endmodule
