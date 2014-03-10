`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:13:06 02/25/2014
// Design Name:   mux4_1_32bit
// Module Name:   C:/Users/Reich/Documents/GitHub/Experiments_CP2A/MIPS_Archi/mux4_1_32bit_tb.v
// Project Name:  MIPS_Archi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux4_1_32bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux4_1_32bit_tb;

	// Inputs
	reg [31:0] and0;
	reg [31:0] or0;
	reg [31:0] sum;
	reg [31:0] less;
	reg [1:0] sel;

	// Outputs
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	mux4_1_32bit uut (
		.result(result), 
		.and0(and0), 
		.or0(or0), 
		.sum(sum), 
		.less(less), 
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		and0 = 0;
		or0 = 0;
		sum = 0;
		less = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#50;
		and0 = 8'h11111111; or0 = 8'h22222222; sum = 8'h33333333; less = 8'h44444444;
		sel = 2'b00; #50;
		sel = 2'b01; #50;
		sel = 2'b10; #50;
		sel = 2'b11; #50;
	end
      
endmodule

