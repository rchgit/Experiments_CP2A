`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:44:14 01/28/2014
// Design Name:   DRAP_shiftl2
// Module Name:   C:/Users/Reich/Documents/DLSU ACAD FOLDER/TERM 9/LBYCP2A/EXPT 1/MIPS_Archi/shiftl2_tb.v
// Project Name:  MIPS_Archi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DRAP_shiftl2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shiftl2_tb;
	// Inputs
	reg [29:0] sign_ext;

	// Outputs
	wire [31:0] shl2;

	// Instantiate the Unit Under Test (UUT)
	DRAP_shiftl2 uut (
		.shl2(shl2), 
		.sign_ext(sign_ext)
	);

	initial begin
		// Initialize Inputs
		sign_ext = 0;

		// Wait 100 ns for global reset to finish
		#100;
      sign_ext = 16'h5555;
		// Add stimulus here
	end    
endmodule

