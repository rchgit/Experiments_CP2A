`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:05:57 02/12/2014
// Design Name:   mux4_1
// Module Name:   C:/LBYCP2AA/Module4/tb_mux4_1.v
// Project Name:  Module4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux4_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
module tb_mux4_1;
	// Inputs
	reg sel1;
	reg sel0;
	reg and0;
	reg or0;
	reg sum;
	reg less;
	// Outputs
	wire result;
	// Instantiate the Unit Under Test (UUT)
	mux4_1 uut (
	.result(result),
	.sel1(sel1),
	.sel0(sel0),
	.and0(and0),
	.or0(or0),
	.sum(sum),
	.less(less)
	);
	parameter SYSCLK = 100;
	always begin
	and0 = 1'b0;
	#(SYSCLK/2) and0 = 1'b1;
	#(SYSCLK/2);
	end
	always begin
	or0 = 1'b0;
	#(SYSCLK/4) or0 = 1'b1;
	#(SYSCLK/4);
	end
	always begin
	sum = 1'b0;
	#(SYSCLK/8) sum = 1'b1;
	#(SYSCLK/8);
	end
	always begin
	less = 1'b0;
	#(SYSCLK/16) less = 1'b1;
	#(SYSCLK/16);
	end
	initial begin
	// Initialize Inputs
	sel1 = 0; sel0 = 0;
	/* and0 = 0;
	or0 = 0;
	sum = 0;
	less = 0;
	*/
	// Wait 100 ns for global reset to finish
	#100;
	// Add stimulus here
	sel1 = 0; sel0 = 0; #(SYSCLK*4);
	sel1 = 0; sel0 = 1; #(SYSCLK*4);
	sel1 = 1; sel0 = 0; #(SYSCLK*4);
	sel1 = 1; sel0 = 1; #(SYSCLK*4);
	end
endmodule