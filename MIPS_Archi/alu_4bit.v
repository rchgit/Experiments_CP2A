`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:10:31 02/12/2014 
// Design Name: 
// Module Name:    alu_4bit 
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
module alu_4bit (
output [3:0] result,
output co,
input [3:0] a, b,
input cin, sel1, sel0, binv,
input [3:0] less);
wire cin1, cin2, cin3;
alu_1bit M1 ( result[0], cin1, a[0], b[0], cin, binv, less[0], sel1, sel0);
alu_1bit M2 ( result[1], cin2, a[1], b[1], cin1, binv, less[1], sel1, sel0);
alu_1bit M3 ( result[2], cin3, a[2], b[2], cin2, binv, less[2], sel1, sel0);
alu_1bit M4 ( result[3], co, a[3], b[3], cin3, binv, less[3], sel1, sel0);
endmodule
