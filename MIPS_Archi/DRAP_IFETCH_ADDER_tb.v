`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:28:47 01/22/2014
// Design Name:   DRAP_IFETCH_ADDER
// Module Name:   C:/LBYCP2A EQ1/MIPS_Archi/DRAP_IFETCH_ADDER_tb.v
// Project Name:  MIPS_Archi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DRAP_IFETCH_ADDER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DRAP_IFETCH_ADDER_tb;

	// Inputs
	reg [31:0] op1;
	reg [31:0] op2;

	// Outputs
	wire [31:0] sum;

	// Instantiate the Unit Under Test (UUT)
	DRAP_IFETCH_ADDER uut (
		.sum(sum), 
		.op1(op1), 
		.op2(op2)
	);

	initial begin
		// Initialize Inputs
		op1 = 0;
		op2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		op1 = 10;
		op2 = 11;
	end
      
endmodule

