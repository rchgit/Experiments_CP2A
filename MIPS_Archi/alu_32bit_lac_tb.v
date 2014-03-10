`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:32:43 02/19/2014
// Design Name:   alu_32bit_lac
// Module Name:   C:/Users/Reich/Documents/GitHub/Experiments_CP2A/MIPS_Archi/alu_32bit_lac_tb.v
// Project Name:  MIPS_Archi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_32bit_lac
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_32bit_lac_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [31:0] less;
	reg cin;
	reg binv;
	reg [1:0] sel;

	// Outputs
	wire [31:0] result;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	alu_32bit_lac uut (
		.result(result), 
		.co(co), 
		.a(a), 
		.b(b), 
		.less(less), 
		.cin(cin), 
		.binv(binv), 
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		a = 32'h00000000;
		b = 32'h00000000;
		less = 0;
		cin = 0;
		binv = 0;
		sel = 2'b00;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 32'haaaaaaaa; b = 32'h55555555; cin = 0; binv = 0; less = 0; sel = 2'b00; #50;
		sel = 2'b01; #50; 
		cin = 1; sel = 2'b10; #50;
		cin = 0; sel = 2'b10; #50;		
		sel = 2'b11; #50;
		b = 32'haaaaaaaa; a = 32'h55555555; cin = 0; binv = 0; less = 0; sel = 2'b11; #50;
		b = 32'haaaaaaaa; a = 32'h55555555; cin = 0; binv = 1; less = 0; sel = 2'b10; #50;
		a = 32'h00000010; b = 32'h00000001; #50;
//		a = 32'h55555555; b = 32'haaaaaaaa; cin = 0; binv = 0; less = 0; sel = 2'b00; #50;
//		a = 32'h12345678; b = 32'h87654321; cin = 0; binv = 0; less = 0; sel = 2'b00; #50;
//		a = 32'haaaaaaaa; b = 32'h55555555; cin = 0; binv = 0; less = 0; sel = 2'b01; #50;
//		a = 32'h55555555; b = 32'haaaaaaaa; cin = 1; binv = 0; less = 0; sel = 2'b01; #50;
//		a = 32'h12345678; b = 32'h87654321; cin = 1; binv = 0; less = 0; sel = 2'b01; #50;
//		a = 32'haaaaaaaa; b = 32'h55555555; cin = 1; binv = 0; less = 0; sel = 2'b01; #50;
	end
      
endmodule

