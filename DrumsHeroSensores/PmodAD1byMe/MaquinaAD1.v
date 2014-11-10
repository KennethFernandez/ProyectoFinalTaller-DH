`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:29:10 11/03/2014 
// Design Name: 
// Module Name:    Count16 
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
module MaquinaAD1(SCLK, DATAIn1, DATAIn2, CS, DATA1, DATA2
    );
input SCLK;
input wire [15:0] DATAIn1;
input wire [15:0] DATAIn2;
output reg CS = 1;
output reg [15:0] DATA1 = 0;
output reg [15:0] DATA2 = 0;

reg [3:0] count = 0;

always @(posedge SCLK) begin
	count <= (count == 4'b1111) ? 4'b0 : count + 4'b1; //Cuenta hasta 16
	CS = (count == 4'b1111) ? ~CS : CS; //Logica negativa
end

always @(posedge CS)begin
	DATA1 = DATAIn1;
	DATA2 = DATAIn2;
end
endmodule
