`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:04:12 02/05/2014 
// Design Name: 
// Module Name:    DRAP_Imemory 
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
//DRAP INSTRUCTION MEMORY UNIT
module DRAP_Imemory (data_out, data_in, address, clk, write);
	parameter B = 32; //data bits
	parameter W = 7; //address bits. 7 = 2**7 = 128 word memory

	output [B-1: 0] data_out;
	input [B-1: 0] data_in;
	input [W-1: 0] address;
	input clk, write;

	reg [B-1: 0] Imemory [2**W-1: 0];

	assign data_out = Imemory[address];
		always @ (posedge clk)
			if (write) Imemory[address] = data_in;
			 
endmodule
