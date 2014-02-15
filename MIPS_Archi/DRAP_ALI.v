`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:17:16 02/12/2014 
// Design Name: 
// Module Name:    DRAP_ALU 
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
//upper nibbles 4-bit ALU
//ops sel1 sel0 binv cin operation
//AND SEL=00 0 0 a && b
//OR SEL=01 0 0 a || b
//ADD SEL=10 0 0 a + b
//SUB SEL=10 1 1 a - b
//less SEL=11 0 0 if (a<b) result=1
module DRAP_ALU (
output [31:0] result,
output co, zero, ovr,
input [31:0] a, b,
input cin, binv,
input sel1, sel0);
wire [31:0]less;
assign less[31:1] = 31'b0;
alu_32bit M1 (result[31:0], co, set, ovr, a[31:0] , b[31:0] , cin, binv, less[31:0], sel1, sel0);
assign less[0] = set;
nor M2 (zero,result[31],result[30],result[29],result[28],result[27],result[26],result[25],
result[24],result[23],result[22],result[21],result[20],result[19],
result[18],result[17],result[16],result[15],result[14],result[13],result[12],
result[11],result[10],result[9],result[8],result[7],result[6],result[5],result[4],
result[3],result[2],result[1]);
endmodule
