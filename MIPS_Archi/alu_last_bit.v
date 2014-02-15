`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:07:49 02/12/2014 
// Design Name: 
// Module Name:    alu_last_bit 
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
module alu_last_bit (
output result, co, set,
input a, b, cin, binv, less, sel1, sel0);
wire bmux, sum, and0, or0;
mux2_1 M1 (bmux, binv, b);
and M2 (and0, a, bmux);
or M3 (or0, a, bmux);
full_adder M4 (sum, co, a, bmux, cin);
mux4_1 M5 (result, and0, or0, sum, less, sel1, sel0);
assign set = sum;
endmodule
