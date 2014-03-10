`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:44:55 02/18/2014 
// Design Name: 
// Module Name:    alu_4bit_cla 
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
module alu_4bit_cla(
output [3:0] result,
output co,
input [3:0] a, b,
input cin, sel1, sel0, binv,
input [3:0] less);

wire cin1, cin2, cin3;
alu_1bit_cla M1 ( result[0], cin1, a[0], b[0], cin, binv, less[0], sel1, sel0);
alu_1bit_cla M2 ( result[1], cin2, a[1], b[1], cin1, binv, less[1], sel1, sel0);
alu_1bit_cla M3 ( result[2], cin3, a[2], b[2], cin2, binv, less[2], sel1, sel0);
alu_1bit_cla M4 ( result[3], co, a[3], b[3], cin3, binv, less[3], sel1, sel0);

CLA_4bit M5( result, co, 0, 0, a,b,cin);

endmodule
