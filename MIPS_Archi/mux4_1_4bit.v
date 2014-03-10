`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:13:12 02/19/2014 
// Design Name: 
// Module Name:    mux4_1_4bit 
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
module mux4_1_4bit (
output [4:0] result,
input [4:0] and0, or0, sum, less, 
input sel1, sel0);
wire sel1n, sel0n, mux0, mux1, mux2;
not M1 (sel1n, sel1);
and M5 (mux2, sum, sel1, sel0n);
and M6 (mux3, less, sel1, sel0);
not M2 (sel0n, sel0);
and M3 (mux0, and0, sel1n, sel0n);
and M4 (mux1, or0, sel1n, sel0);
or M7 (result, mux0, mux1, mux2, mux3);
endmodule
