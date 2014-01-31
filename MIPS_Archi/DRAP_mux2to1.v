`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:52 01/22/2014 
// Design Name: 
// Module Name:    DRAP_mux2to1 
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
//DRAP_mux2to1
//Part of the IFETCH Module
module Ifetch_mux1(mux_out1, op0, op1, sel);
parameter B = 32; //data bits
output [B-1: 0] mux_out1;
input [B-1: 0] op0, op1;
input sel;
reg [B-1:0] tmp;
always @ (sel, op0, op1)
	if (sel) tmp = op1;
	else tmp = op0;
		assign mux_out1 = tmp;
endmodule
