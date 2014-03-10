`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:47:22 02/18/2014 
// Design Name: 
// Module Name:    alu_1bit_cla 
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
module alu_1bit_cla(
output result, co,
input a, b, cin, binv, less, sel1, sel0);
wire bmux, sum, and0, or0;

mux2_1 M1 (bmux, binv, b);
and M2 (and0, a, bmux);
or M3 (or0, a, bmux);

mux4_1 M5 (result, and0, or0, sum, less, sel1, sel0);


endmodule
