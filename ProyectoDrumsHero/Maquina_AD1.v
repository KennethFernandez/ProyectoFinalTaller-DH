`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:13:25 11/03/2014 
// Design Name: 
// Module Name:    Maquina_AD1 
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
module Maquina_AD1(SCLK, SIXT, CS
    );
	 
input wire SCLK;
input wire SIXT;
output wire CS;

reg state = 1;
reg next = 1;
	 
parameter reading = 0;
parameter waiting = 1;
	 
always @(posedge SCLK) state <= next;

always @(state or SIXT) begin
	case(state)
		reading: begin
			if(SIXT == 1)begin
				next <= waiting;
			end
			else begin
				next <= reading;
			end
		end
		waiting: begin
			if(SIXT == 1) begin
				next <= reading;
			end
			else begin
				next <= waiting;
				contDATAtemp <= contDATA + 4'b1;
			end
		end
		default: begin
				next <= state;
			end
	endcase
end

assign CS = state;

endmodule
