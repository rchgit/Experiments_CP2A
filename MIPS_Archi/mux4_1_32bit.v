`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:50 02/19/2014 
// Design Name: 
// Module Name:    mux4_1_32bit 
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
module mux4_1_32bit(
 output [31:0] result,
 input [31:0] and0, or0, sum, less, 
 input [1:0] sel);
 //reg resTemp;
 
wire sel1n, sel0n, mux0, mux1, mux2;
not M1 (sel1n, sel[0]);
and M5 (mux2, sum, sel1, sel0n);
and M6 (mux3, less, sel1, sel0);
not M2 (sel0n, sel0);
and M3 (mux0, and0, sel1n, sel0n);
and M4 (mux1, or0, sel1n, sel0);
or M7 (result, mux0, mux1, mux2, mux3);
//always
//begin
//	case(sel)
//		2'b00: resTemp = and0;
//		2'b01: resTemp <= or0;
//		2'b10: resTemp <= sum;
//		2'b11: resTemp <= less;
//	endcase	
//	
//end
//assign result = resTemp;
endmodule
