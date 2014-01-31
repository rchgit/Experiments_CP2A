`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:10:52 01/22/2014 
// Design Name: 
// Module Name:    DRAP_IFETCH_ADDER 
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
//DRAP_ADDER
//Part of the IFETCH Module
module DRAP_IFETCH_ADDER(sum, op1, op2);
parameter B = 32; //data bits
output [B-1: 0] sum;
input [B-1: 0] op1, op2;
assign sum = op1 + op2;
endmodule