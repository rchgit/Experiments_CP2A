`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:09:55 02/12/2014 
// Design Name: 
// Module Name:    alu_4bit_upper 
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
module alu_4bit_upper (
output [3:0] result,
output co, set, ovr,
input [3:0] a, b,
input [3:0] less,
input cin, binv, sel1, sel0 );
wire cin1, cin2, cin3,cin4;
alu_1bit M1 ( result[0], cin1, a[0], b[0], cin, binv, less[0], sel1, sel0);
alu_1bit M2 ( result[1], cin2, a[1], b[1], cin1, binv, less[1], sel1, sel0);
alu_1bit M3 ( result[2], cin3, a[2], b[2], cin2, binv, less[2], sel1, sel0);
alu_last_bit M4 ( result[3], cin4, set, a[3], b[3], cin3, binv, less[3], sel1, sel0);
xor M5 (ovr, cin3, cin4);
assign co = cin4;
endmodule