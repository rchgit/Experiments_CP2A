`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:07:46 02/18/2014
// Design Name:   CLA_4bit
// Module Name:   C:/Users/Reich/Documents/GitHub/Experiments_CP2A/MIPS_Archi/CLA_4bit_tb.v
// Project Name:  MIPS_Archi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLA_4bit_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] S;
	wire Cout;
	wire PG;
	wire GG;

	// Instantiate the Unit Under Test (UUT)
	CLA_4bit uut (
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
		 A=4'b0001;B=4'b0000;Cin=1'b0;
		 #50 A=4'b100;B=4'b0011;Cin=1'b0;
		 #50 A=4'b1101;B=4'b1010;Cin=1'b1;
		 #50 A=4'b1110;B=4'b1001;Cin=1'b0;
		 #50 A=4'b1111;B=4'b1010;Cin=1'b0;

	end
   
	initial begin
		$monitor("time=",$time,, "A=%b B=%b Cin=%b : Sum=%b Cout=%b PG=%b GG=%b",A,B,Cin,S,Cout,PG,GG);
    end  
endmodule

