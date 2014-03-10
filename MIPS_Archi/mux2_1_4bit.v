`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:53:22 02/18/2014 
// Design Name: 
// Module Name:    mux2_1_4bit 
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
module mux2_1_4bit(
    output [3:0] bmux,
    input [3:0] b,
    input binv
    );
wire [3:0] w1, w2, bn;
wire binv_n;
not M1 (bn, b);
not M2 (binv_n, binv);
and M3 (w1, b, binv_n);
and M4 (w2, bn, binv);
or M5 (bmux, w1, w2);

endmodule
