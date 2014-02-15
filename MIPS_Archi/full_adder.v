`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:01:56 02/12/2014 
// Design Name: 
// Module Name:    full_adder 
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
// MODULE full_adder.v
// sum = a b' c' + a' b cin' + a b cin + a' b' cin
// cout = a b + a cin + b cin
module full_adder (
output sum, co,
input a, bmux, cin);
wire co1, co2, co3, x_or, x_nor, cin_n, sum1, sum2;
// sum
xor M1 (x_or, a, bmux);
xnor M2 (x_nor, a, bmux);
not M3 (cin_n, cin);
and M4 (sum1, cin_n, x_or);
and M5 (sum2, cin, x_nor);
or M6(sum, sum1, sum2);
// cout
and M7 (co1, a, bmux);
and M8 (co2, a, cin);
and M9 (co3, bmux, cin);
or M10 (co, co1, co2, co3);
endmodule
