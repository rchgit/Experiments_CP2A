`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:44 02/12/2014 
// Design Name: 
// Module Name:    alu_8bit 
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
module alu_8bit (
output [7:0] result,
output co,
input [7:0] a, b,
input cin, binv,
input [7:0]less,
input sel1, sel0
);
wire cin1;
alu_4bit M1 ( result[3:0], cin1, a[3:0], b[3:0], cin, binv, less[3:0], sel1, sel0);
alu_4bit M2 ( result[7:4], co, a[7:4], b[7:4], cin1, binv, less[7:4], sel1, sel0);
endmodule
