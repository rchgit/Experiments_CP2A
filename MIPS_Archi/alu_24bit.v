`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:12:38 02/12/2014 
// Design Name: 
// Module Name:    alu_24bit 
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
module alu_24bit (
output [23:0] result,
output co,
input [23:0] a, b,
input cin, binv,
input [23:0] less,
input sel1, sel0);
wire cin1;
alu_16bit M1 ( result[15:0], cin1, a[15:0], b[15:0], cin, binv, less[15:0], sel1, sel0);
alu_8bit M2 ( result[23:16], co, a[23:16], b[23:16], cin1, binv, less[23:16], sel1, sel0);
endmodule
