`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:05:52 11/03/2014 
// Design Name: 
// Module Name:    PmodAD1GGWP 
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
module PmodAD1GGWP(CLK, calibrate1, calibrate2, calibrate3, calibrate4,
			calibrate5, dDATA1, dDATA2, dDATA3, dDATA4, dDATA5, CS1, CS2, CS3,
			CLK12_5K1, CLK12_5K2, CLK12_5K3, led);
			
input wire CLK;
input wire calibrate1;
input wire calibrate2;
input wire calibrate3;
input wire calibrate4;
input wire calibrate5;
////////////////////////Salidas del PMODAD1///////////////////////////////////////
input wire dDATA1; //Bit por bit que ha sido convertido por el AD1
input wire dDATA2; //Bit por bit que ha sido convertido por el AD1
input wire dDATA3;
input wire dDATA4;
input wire dDATA5;
//////////////////////////////////////////////////////////////////////////////////
output wire CS1;
output wire CS2;
output wire CS3;
output wire CLK12_5K1;
output wire CLK12_5K2;
output wire CLK12_5K3;
output wire [4:0] led;
//////////////////////SOUND INDICATORS///////////////////////
wire soundIndicator1;
wire [7:0] soundLevel1;
wire soundIndicator2;
wire [7:0] soundLevel2;
wire soundIndicator3;
wire [7:0] soundLevel3;
wire soundIndicator4;
wire [7:0] soundLevel4;
wire soundIndicator5;
wire [7:0] soundLevel5;
/////////////////////////////////////////////////////////////

wire [15:0] DATA1; //Salida de 16 bits, valor final convertido
wire [15:0] DATA2; //Salida de 16 bits, valor final convertido
wire [15:0] DATA3;
wire [15:0] DATA4;
wire [15:0] DATA5;

wire [15:0] DATA1_temp; //Valor temporal convertido, es temporal debido a que el valor
							  //se forma en base a desplazamientos
wire [15:0] DATA2_temp;
wire [15:0] DATA3_temp;
wire [15:0] DATA4_temp;
wire [15:0] DATA5_temp;

wire clk50;
wire [15:0] convertidores;
wire [3:0] dataSieteSegmentos;

wire CLK12_5K;

assign CLK12_5K1 = CLK12_5K;
assign CLK12_5K2 = CLK12_5K;
assign CLK12_5K3 = CLK12_5K;
assign led[4:0] = {soundIndicator5, soundIndicator4, soundIndicator3, soundIndicator2, soundIndicator1};

AD1_Informant ad1_informant_1(.clk(CLK), .calibrate(calibrate1), .DATA(DATA1), .soundIndicator(soundIndicator1), .soundLevel(soundLevel1));
AD1_Informant ad1_informant_2(.clk(CLK), .calibrate(calibrate2), .DATA(DATA2), .soundIndicator(soundIndicator2), .soundLevel(soundLevel2));
AD1_Controller ad1_1(.DATA1(DATA1_temp), .DATA2(DATA2_temp), .CS(CS), .SCLK(CLK12_5K1), .dDATA1(dDATA1), .dDATA2(dDATA2));
MaquinaAD1 mad1_1(.SCLK(CLK12_5K1), .DATAIn1(DATA1_temp), .DATAIn2(DATA2_temp), .CS(CS1), .DATA1(DATA1), .DATA2(DATA2));

AD1_Informant ad1_informant_3(.clk(CLK), .calibrate(calibrate3), .DATA(DATA3), .soundIndicator(soundIndicator3), .soundLevel(soundLevel3));
AD1_Informant ad1_informant_4(.clk(CLK), .calibrate(calibrate4), .DATA(DATA4), .soundIndicator(soundIndicator4), .soundLevel(soundLevel4));
AD1_Controller ad1_2(.DATA1(DATA3_temp), .DATA2(DATA4_temp), .CS(CS), .SCLK(CLK12_5K2), .dDATA1(dDATA3), .dDATA2(dDATA4));
MaquinaAD1 mad1_2(.SCLK(CLK12_5K2), .DATAIn1(DATA3_temp), .DATAIn2(DATA4_temp), .CS(CS2), .DATA1(DATA3), .DATA2(DATA4));

AD1_Informant ad1_informant_5(.clk(CLK), .calibrate(calibrate5), .DATA(DATA5), .soundIndicator(soundIndicator5), .soundLevel(soundLevel5));
AD1_Controller ad1_3(.DATA1(DATA5_temp), .DATA2(), .CS(CS), .SCLK(CLK12_5K3), .dDATA1(dDATA5), .dDATA2(0));
MaquinaAD1 mad1_3(.SCLK(CLK12_5K3), .DATAIn1(DATA5_temp), .DATAIn2(0), .CS(CS3), .DATA1(DATA5), .DATA2());

Clk12_5K clk12_5k(.CLK(CLK), .CLK12_5K(CLK12_5K));

endmodule
