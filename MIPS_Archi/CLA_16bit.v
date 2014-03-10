`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:49:43 02/18/2014 
// Design Name: 
// Module Name:    CLA_16bit 
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
module CLA_16bit(
    output [15:0] S,
    output Cout,
	 // PG and GG = Propagate and generate group carry
    input [15:0] A,B,
    input Cin
    );
	 
	 wire c7;
	 
	 CLA_8bit CLA1(S[7:0],c7,A[7:0],B[7:0],Cin);
	 CLA_8bit CLA2(S[15:8],Cout,A[15:8],B[15:8],c7);


endmodule
