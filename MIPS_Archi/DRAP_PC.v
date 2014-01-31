`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:09:04 01/22/2014 
// Design Name: 
// Module Name:    DRAP_PC 
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
module DRAP_PC(PC_out, PC_in, PC_load, rst, clk);
	parameter B = 32; //data bits
	output [B-1: 0] PC_out;
	input [B-1: 0] PC_in;
	input PC_load, rst, clk;
	reg [B-1: 0] tmp;
	always @ (posedge clk, posedge rst)
		if (rst)
			tmp <= 0;
		else
			if (PC_load) tmp <= PC_in;
				assign PC_out = tmp;
endmodule
