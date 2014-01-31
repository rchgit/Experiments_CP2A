`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:12:40 01/22/2014 
// Design Name: 
// Module Name:    DRAP_shiftleft2 
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
//DRAP_shiftleft2
//Part of the IFETCH Module
//shift 32-bit inputs 2 bits to the left
//concatenate PC+4
module Ifetch_sh2(sh2_out, instr_in, PCplus4);
output [31: 0] sh2_out;
input [25: 0] instr_in; // from address portion of instruction
input [3: 0] PCplus4;
assign sh2_out = {PCplus4,instr_in,2'b00};
endmodule
