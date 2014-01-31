`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:20:39 01/22/2014
// Design Name:   DRAP_Ifetch
// Module Name:   C:/LBYCP2A EQ1/MIPS_Archi/DRAP_Ifetch_tb.v
// Project Name:  MIPS_Archi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DRAP_Ifetch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module DRAP_Ifetch_tb;
// Inputs
reg [29:0] sign_ext_in;
reg [25:0] instruction;
reg Br_in;
reg Zero_in;
reg jmp;
reg rst;
reg clk;
// Outputs
wire [31:0] PC_out;
// Instantiate the Unit Under Test (UUT)
	DRAP_Ifetch uut (
	.PC_out(PC_out),
	.sign_ext_in(sign_ext_in),
	.instruction(instruction),
	.Br_in(Br_in),
	.Zero_in(Zero_in),
	.jmp(jmp),
	.rst(rst),
	.clk(clk)
);
parameter PERIOD = 100;
always begin
	clk = 1'b0;
	#(PERIOD/2) clk = 1'b1;
	#(PERIOD/2);
end
initial begin
	// Initialize Inputs
	sign_ext_in = 0;
	instruction = 0;
	Br_in = 0;
	Zero_in = 0;
	jmp = 0;
	rst = 0;
	// Wait 100 ns for global reset to finish
	#100;
	// Add stimulus here
	//RESET. Clear the program counter to 0
	sign_ext_in = 0;
	instruction = 0;
	Br_in = 0;
	Zero_in = 0;
	jmp = 0;
	rst = 1;
	#100;
	//INCREMENT. Increment the program counter
	sign_ext_in = 0;
	instruction = 0;
	Br_in = 0;
	Zero_in = 0;
	jmp = 0;
	rst = 0;
	#(PERIOD*4);
	//BRANCH.
	sign_ext_in = 30'B100000_00000000_00000000_00000000;
	instruction = 0;
	Br_in = 1;
	Zero_in = 1;
	jmp = 0;
	rst = 0;
	#(PERIOD);
	sign_ext_in = 0;
	instruction = 25'B0_01000000_00000000_00000000;
	Br_in = 0;
	Zero_in = 0;
	jmp = 0;
	rst = 0;
	#(PERIOD*4);
	//JUMP.
	sign_ext_in = 0;
	instruction = 25'B0_01000000_00000000_00000000;
	Br_in = 0;
	Zero_in = 0;
	jmp = 1;
	rst = 0;
	#(PERIOD);
	sign_ext_in = 0;
	instruction = 25'B0_01000000_00000000_00000000;
	Br_in = 0;
	Zero_in = 0;
	jmp = 0;
	rst = 0;
	#(PERIOD*4);
	$stop;
end
endmodule
