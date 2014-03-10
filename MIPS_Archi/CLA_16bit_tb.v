`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:01:28 02/18/2014
// Design Name:   CLA_16bit
// Module Name:   C:/Users/Reich/Documents/GitHub/Experiments_CP2A/MIPS_Archi/CLA_16bit_tb.v
// Project Name:  MIPS_Archi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_16bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLA_16bit_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg Cin;

	// Outputs
	wire [15:0] S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	CLA_16bit uut (
		.S(S), 
		.Cout(Cout),  
		.A(A), 
		.B(B), 
		.Cin(Cin)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		     A=16'h5aa5; B=16'ha55a; Cin=1'b0;
		 #50 A=16'h1010; B=16'h0101; Cin=1'b0;
		 #50 A=16'hf1; B=16'h1f; Cin=1'b1;
		 #50 A=16'habe2;  B=16'hcd2e;  Cin=1'b0;
		 #50 A=16'hff13;  B=16'hff31;  Cin=1'b0;
	end
      
endmodule

