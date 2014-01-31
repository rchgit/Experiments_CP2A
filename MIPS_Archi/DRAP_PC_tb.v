`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:17:33 01/22/2014
// Design Name:   DRAP_PC
// Module Name:   C:/LBYCP2A EQ1/MIPS_Archi/DRAP_PC_tb.v
// Project Name:  MIPS_Archi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DRAP_PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module DRAP_PC_tb;
// Inputs
reg [31:0] PC_in;
reg PC_load;
reg clk;
// Outputs
wire [31:0] PC_out;
// Instantiate the Unit Under Test (UUT)
DRAP_PC uut (
.PC_out(PC_out),
.PC_in(PC_in),
.PC_load(PC_load),
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
	PC_in = 0;
	PC_load = 0;
	// Wait 100 ns for global reset to finish
	#100;
	// Add stimulus here
	PC_in = 32'hffffffff;
	PC_load = 1;
	#(PERIOD);
	PC_in = 0;
	PC_load = 0;
	#(PERIOD);
	PC_in = 32'haaaaaaaa;
	PC_load = 1;
	#(PERIOD);
	PC_in = 0;
	PC_load = 0;
	#(PERIOD);
	PC_in = 32'h55555555;
	PC_load = 1;
	#(PERIOD);
	PC_in = 0;
	PC_load = 0;
	#(PERIOD);
end
endmodule

