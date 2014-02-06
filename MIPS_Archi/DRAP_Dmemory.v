`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:08:16 02/05/2014 
// Design Name: 
// Module Name:    DRAP_Dmemory 
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
//DRAP DATA MEMORY UNIT
module DRAP_Dmemory (data_out, data_in, address, clk, write, read);
	output reg [31: 0] data_out;

	input [31: 0] data_in;
	input [3: 0] address;
	input clk, write,read;
	
	reg [31: 0] Dmemory [2**7: 0];
	always @ (posedge clk)
		if (read) data_out = Dmemory[address];
	always @ (posedge clk)
		if (write) Dmemory[address] = data_in;
endmodule
