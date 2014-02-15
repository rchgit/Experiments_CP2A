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

module alu_24bit_tb;

	// Inputs
	reg [23:0] a;
	reg [23:0] b;
	reg cin;
	reg binv;
	reg [23:0] less;
	reg sel1;
	reg sel0;

	// Outputs
	wire [23:0] result;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	alu_24bit uut (
		.result(result), 
		.co(co), 
		.a(a), 
		.b(b), 
		.cin(cin), 
		.binv(binv), 
		.less(less), 
		.sel1(sel1), 
		.sel0(sel0)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;
		binv = 0;
		less = 0;
		sel1 = 0;
		sel0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 24'haaaaaa; b = 24'h555555; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
		a = 24'h555555; b = 24'haaaaaa; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
		a = 24'h123456; b = 24'h654321; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
		a = 24'haaaaaa; b = 24'h555555; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
		a = 24'h555555; b = 24'haaaaaa; cin = 1; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
		a = 24'h123456; b = 24'h654321; cin = 1; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
		a = 24'haaaaaa; b = 24'h555555; cin = 1; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
		a = 24'h555555; b = 24'haaaaaa; cin = 1; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
		a = 24'haaaaaa; b = 24'h555555; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 1; #50;
		a = 24'h555555; b = 24'haaaaaa; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 1; #50;
		a = 24'h123456; b = 24'h654321; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 1; #50;
		a = 24'haaaaaa; b = 24'h555555; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 1; #50;
		a = 24'h123456; b = 24'h654321; cin = 1; binv = 0; less = 0; sel1 = 0; sel0 = 1; #50;
		a = 24'h555555; b = 24'haaaaaa; cin = 1; binv = 0; less = 0; sel1 = 0; sel0 = 1; #50;
		a = 24'haaaaaa; b = 24'h555555; cin = 1; binv = 0; less = 0; sel1 = 0; sel0 = 1; #50;
		a = 24'h123456; b = 24'h654321; cin = 1; binv = 0; less = 0; sel1 = 0; sel0 = 1; #50;
//		a = 0; b = 0; cin = 0; binv = 0; less = 0; sel1 = 1; sel0 = 0; #50;
//		a = 1; b = 0; cin = 0; binv = 0; less = 0; sel1 = 1; sel0 = 0; #50;
//		a = 0; b = 1; cin = 0; binv = 0; less = 0; sel1 = 1; sel0 = 0; #50;
//		a = 1; b = 1; cin = 0; binv = 0; less = 0; sel1 = 1; sel0 = 0; #50;
//		a = 0; b = 0; cin = 1; binv = 0; less = 0; sel1 = 1; sel0 = 0; #50;
//		a = 1; b = 0; cin = 1; binv = 0; less = 0; sel1 = 1; sel0 = 0; #50;
//		a = 0; b = 1; cin = 1; binv = 0; less = 0; sel1 = 1; sel0 = 0; #50;
//		a = 1; b = 1; cin = 1; binv = 0; less = 0; sel1 = 1; sel0 = 0; #50;
//		a = 0; b = 0; cin = 0; binv = 0; less = 0; sel1 = 1; sel0 = 1; #50;
//		a = 1; b = 0; cin = 0; binv = 0; less = 0; sel1 = 1; sel0 = 1; #50;
//		a = 0; b = 1; cin = 0; binv = 0; less = 0; sel1 = 1; sel0 = 1; #50;
//		a = 1; b = 1; cin = 0; binv = 0; less = 0; sel1 = 1; sel0 = 1; #50;
//		a = 0; b = 0; cin = 1; binv = 0; less = 0; sel1 = 1; sel0 = 1; #50;
//		a = 1; b = 0; cin = 1; binv = 0; less = 0; sel1 = 1; sel0 = 1; #50;
//		a = 0; b = 1; cin = 1; binv = 0; less = 0; sel1 = 1; sel0 = 1; #50;
//		a = 1; b = 1; cin = 1; binv = 0; less = 0; sel1 = 1; sel0 = 1; #50;
	end
      
endmodule

