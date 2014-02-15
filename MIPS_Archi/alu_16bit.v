`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:12:15 02/12/2014 
// Design Name: 
// Module Name:    alu_16bit 
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
module alu_16bit (
output [15:0] result, output co, input [15:0] a, b,
input cin, binv,
input [15:0] less,
input sel1, sel0);
wire cin1;
alu_8bit M1 ( result[7:0], cin1, a[7:0], b[7:0], cin, binv, less[7:0], sel1, sel0);
alu_8bit M2 ( result[15:8], co, a[15:8], b[15:8], cin1, binv, less[15:8], sel1, sel0);
endmodule
