`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:03:55 02/12/2014 
// Design Name: 
// Module Name:    mux2_1 
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
module mux2_1 (
output bmux,
input binv, b);
wire w1, w2, binv_n, bn;
not M1 (bn, b);
not M2 (binv_n, binv);
and M3 (w1, b, binv_n);
and M4 (w2, bn, binv);
or M5 (bmux, w1, w2);
endmodule
