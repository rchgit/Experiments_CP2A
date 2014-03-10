`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:32:23 02/12/2014
// Design Name:   alu_32bit
// Module Name:   C:/Users/Reich/Documents/GitHub/Experiments_CP2A/MIPS_Archi/alu_32bit_tb.v
// Project Name:  MIPS_Archi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_32bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_32bit_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg cin;
	reg binv;
	reg [31:0] less;
	reg sel1;
	reg sel0;

	// Outputs
	wire [31:0] result;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	alu_32bit uut (
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
		a = 32'h00000001; b = 32'h00000003; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
		a = 32'haaaaaaaa; b = 32'h55555555; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
		sel1 = 0; sel0 = 1;  #50; 
		cin = 1; sel1 = 1; sel0 = 0; #50; 
		cin = 0; sel1 = 1; sel0 = 0; #50; 
		sel1 = 1; sel0 = 1; #50;
		b = 32'haaaaaaaa; a = 32'h55555555; cin = 0; binv = 0; less = 0; sel1 = 1; sel0 = 1; #50;
		b = 32'haaaaaaaa; a = 32'h55555555; cin = 0; binv = 1; less = 0; sel1 = 1; sel0 = 0; #50;
		//a = 32'haaaaaaaa; b = 32'h55555555; cin = 0; binv = 1; less = 0; sel1 = 1; sel0 = 0; #50;
		a = 32'h00000010; b = 32'h00000001; #50;
	end
      
endmodule

