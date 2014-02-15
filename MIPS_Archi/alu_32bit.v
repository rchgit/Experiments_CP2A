`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:25:11 02/12/2014
// Design Name:   alu_24bit
// Module Name:   C:/Users/Reich/Documents/GitHub/Experiments_CP2A/MIPS_Archi/alu_24bit_tb.v
// Project Name:  MIPS_Archi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_24bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_32bit (
	output [31:0] result,
	output co,
	input [31:0] a, b,
	input cin, binv,
	input [31:0] less,
	input sel1, sel0);
	wire cin1;
	alu_16bit M1 ( result[15:0], cin1, a[15:0], b[15:0], cin, binv, less[15:0], sel1, sel0);
	alu_16bit M2 ( result[31:16], co, a[31:16], b[31:16], cin1, binv, less[31:16], sel1, sel0);
endmodule