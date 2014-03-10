`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:56:33 02/18/2014 
// Design Name: 
// Module Name:    CLA_8bit 
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
module CLA_8bit(
	 output [7:0] S,
    output Cout,
	 // PG and GG = Propagate and generate group carry
    input [7:0] A,B,
    input Cin
    );
	 
	 wire c3,p3,g3,p7,g7;
	 
	 CLA_4bit CLA1(S[3:0],c3,p3,g3,A[3:0],B[3:0],Cin);
	 CLA_4bit CLA2(S[7:4],Cout,p7,g7,A[7:4],B[7:4],c3);
	

endmodule
