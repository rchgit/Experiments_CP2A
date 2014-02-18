`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:18:06 02/18/2014
// Design Name:   CLA_8bit
// Module Name:   C:/Users/Reich/Documents/GitHub/Experiments_CP2A/MIPS_Archi/CLA_8bit_tb.v
// Project Name:  MIPS_Archi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLA_8bit_tb;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg Cin;

	// Outputs
	wire [7:0] S;
	wire Cout;
	wire PG;
	wire GG;

	// Instantiate the Unit Under Test (UUT)
	CLA_8bit uut (
		.S(S), 
		.Cout(Cout), 
		.PG(PG), 
		.GG(GG), 
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
		 A=8'ha5;B=8'h5a;Cin=1'b0;
		 #50 A=8'h10;B=8'h01;Cin=1'b0;
		 #50 A=8'hf1;B=8'h1f;Cin=1'b1;
		 #50 A=8'he2;B=8'h2e;Cin=1'b0;
		 #50 A=8'h13;B=8'h31;Cin=1'b0;
	end
      
endmodule

