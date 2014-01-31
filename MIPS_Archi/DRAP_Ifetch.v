`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:13:11 01/22/2014 
// Design Name: 
// Module Name:    DRAP_Ifetch 
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
//DRAP_Ifetch
//Part of the IFETCH Module
//shift 32-bit inputs 2 bits to the left
//concatenate PC+4
module DRAP_Ifetch(PC_out, sign_ext_in, instruction, Br_in, Zero_in, jmp, rst, clk);
output [31: 0] PC_out;
input [29: 0] sign_ext_in; // sign extended 16-bit address
input [25: 0] instruction;
input Br_in, Zero_in, jmp, rst, clk;
wire [31:0] pcout, pcplus4, shl2, cond_br, jmp_addr;
wire [31:0] tmp1, tmp2;
wire w1;

assign PC_out = pcout;
DRAP_PC M1(pcout, tmp2, 1'b1, rst, clk);
DRAP_IFETCH_ADDER M2(pcplus4, pcout, 32'h4);
DRAP_shiftl2 M3(shl2,sign_ext_in[29:0]);
DRAP_IFETCH_ADDER M4(cond_br, pcplus4, shl2);
Ifetch_mux1 M5(tmp1, pcplus4, cond_br, w1);
and M6(w1, Br_in, Zero_in);
Ifetch_sh2 M7(jmp_addr, instruction, pcplus4[31:28]); //for unconditional jump
Ifetch_mux1 M8(tmp2, tmp1, jmp_addr, jmp);

endmodule