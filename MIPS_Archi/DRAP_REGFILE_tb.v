`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:59:54 01/29/2014
// Design Name:   DRAP_REGFILE
// Module Name:   C:/LBYCP2A EQ1/MIPS_Archi/DRAP_REGFILE_tb.v
// Project Name:  MIPS_Archi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DRAP_REGFILE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DRAP_REGFILE_tb;

	// Inputs
	reg clk;
	reg rst;
	reg wr_en;
	reg [4:0] r_addr1;
	reg [4:0] r_addr2;
	reg [4:0] w_addr;
	reg [31:0] w_data;

	// Outputs
	wire [31:0] r_data1;
	wire [31:0] r_data2;

	// Instantiate the Unit Under Test (UUT)
	DRAP_REGFILE uut (
		.clk(clk), 
		.rst(rst), 
		.wr_en(wr_en), 
		.r_addr1(r_addr1), 
		.r_addr2(r_addr2), 
		.w_addr(w_addr), 
		.w_data(w_data), 
		.r_data1(r_data1), 
		.r_data2(r_data2)
	);

	parameter PERIOD = 100;
	always begin
		clk = 1'b0;
		#(PERIOD/2) clk = 1'b1;
		#(PERIOD/2);
	end
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		wr_en = 0;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 0;
		w_data = 0;

		// Wait 100 ns for global reset to finish
		#120;
      rst = 1;
		#100;
		rst = 0;
		// Add stimulus here
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 0;
		w_data = 32'b00000000_00000000_00000000_00000000;
		#(PERIOD);
		
		
		wr_en = 0;
		r_addr1 = 0;
		r_addr2 = 1;
		w_addr = 0;
		w_data = 0;
		#(PERIOD);
		
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 1;
		w_data = 32'b00000000_00000000_00000000_00000001;
		#(PERIOD);
		
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 2;
		w_data = 32'b00000000_00000000_00000000_00000010;
		#(PERIOD);
		
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 3;
		w_data = 32'b00000000_00000000_00000000_00000100;
		#(PERIOD);
		
		wr_en = 0;
		r_addr1 = 2;
		r_addr2 = 3;
		w_addr = 0;
		w_data = 0;
		#(PERIOD);
		
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 4;
		w_data = 32'b00000000_00000000_00000000_00000100;
		#(PERIOD);
		
		wr_en = 0;
		r_addr1 = 2;
		r_addr2 = 3;
		w_addr = 0;
		w_data = 0;
		#(PERIOD);
			
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 5;
		w_data = 32'b00000000_00000000_00000000_00001000;
		#(PERIOD);
		wr_en = 1;
		
		wr_en = 0;
		r_addr1 = 4;
		r_addr2 = 5;
		w_addr = 0;
		w_data = 0;
		#(PERIOD);
		
		wr_en=1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 6;
		w_data = 32'b00000000_00000000_00000000_00010000;
		#(PERIOD);
		
		wr_en = 0;
		r_addr1 = 6;
		r_addr2 = 7;
		w_addr = 0;
		w_data = 0;
		#(PERIOD);
		
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 7;
		w_data = 32'b00000000_00000000_00000000_00100000;
		#(PERIOD);
		
			wr_en = 0;
		r_addr1 = 8;
		r_addr2 = 9;
		w_addr = 0;
		w_data = 0;
		#(PERIOD);
		
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 8;
		w_data = 32'b00000000_00000000_00000000_01000000;
		#(PERIOD);
		
			wr_en = 0;
		r_addr1 = 10;
		r_addr2 = 11;
		w_addr = 0;
		w_data = 0;
		#(PERIOD);
		
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 9;
		w_data = 32'b00000000_00000000_00000000_10000000;
		#(PERIOD);
		
		wr_en = 0;
		r_addr1 = 12;
		r_addr2 = 13;
		w_addr = 0;
		w_data = 0;
		#(PERIOD);
		
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 10;
		w_data = 32'b00000000_00000000_00000000_00000000;
		#(PERIOD);
		
		
		wr_en = 0;
		r_addr1 = 14;
		r_addr2 = 15;
		w_addr = 0;
		w_data = 0;
		#(PERIOD);
		
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 11;
		w_data = 32'b00000000_00000000_00000001_00000000;
		#(PERIOD);
		
		wr_en = 0;
		r_addr1 = 16;
		r_addr2 = 17;
		w_addr = 0;
		w_data = 0;
		#(PERIOD);
		
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 12;
		w_data = 32'b00000000_00000000_00000010_00000000;
		#(PERIOD);
		
			
		wr_en = 0;
		r_addr1 = 18;
		r_addr2 = 19;
		w_addr = 0;
		w_data = 0;
		#(PERIOD);
		
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 13;
		w_data = 32'b00000000_00000000_00000100_00000000;
		#(PERIOD);
		
		wr_en = 0;
		r_addr1 = 20;
		r_addr2 = 21;
		w_addr = 0;
		w_data = 0;
		#(PERIOD);
		
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 14;
		w_data = 32'b00000000_00000000_00000100_00000000;
		#(PERIOD);
		
			wr_en = 0;
		r_addr1 = 22;
		r_addr2 = 23;
		w_addr = 0;
		w_data = 0;
		#(PERIOD);
		
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 15;
		w_data = 32'b00000000_00000000_00001000_00000000;
		#(PERIOD);
		
		wr_en = 0;
		r_addr1 = 24;
		r_addr2 = 25;
		w_addr = 0;
		w_data = 0;
		#(PERIOD);
		
		
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 16;
		w_data = 32'b00000000_00000000_00010000_00000000;
		#(PERIOD);
		
		
		
		
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 17;
		w_data = 32'b00000000_00000000_00100000_00000000;
		#(PERIOD);
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 18;
		w_data = 32'b00000000_00000000_01000000_00000000;
		#(PERIOD);
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 19;
		w_data = 32'b00000000_00000000_10000000_00000000;
		#(PERIOD);
		
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 20;
		w_data = 32'b00000000_00000000_00000000_00000000;
		#(PERIOD);
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 21;
		w_data = 32'b00000000_00000001_00000000_00000000;
		#(PERIOD);
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 22;
		w_data = 32'b00000000_00000010_00000000_00000000;
		#(PERIOD);
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 23;
		w_data = 32'b00000000_00000100_00000000_00000000;
		#(PERIOD);
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 24;
		w_data = 32'b00000000_00000100_00000000_00000000;
		#(PERIOD);
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 25;
		w_data = 32'b00000000_00001000_00000000_00000000;
		#(PERIOD);
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 26;
		w_data = 32'b00000000_00010000_00000000_00000000;
		#(PERIOD);
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 27;
		w_data = 32'b00000000_00100000_00000000_00000000;
		#(PERIOD);
		
		wr_en = 0;
		r_addr1 = 26;
		r_addr2 = 27;
		w_addr = 0;
		w_data = 0;
		#(PERIOD);
		
		
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 28;
		w_data = 32'b00000000_01000000_00000000_00000000;
		#(PERIOD);
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 29;
		w_data = 32'b00000000_10000000_00000000_00000000;
		#(PERIOD);
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 30;
		w_data = 32'b01010101_01010101_01010101_01010101;
		#(PERIOD);
		wr_en = 1;
		r_addr1 = 0;
		r_addr2 = 0;
		w_addr = 31;
		w_data = 32'b10101010_10101010_10101010_10101010;
		#(PERIOD);
		
		//////////////////////////////////////////////////
	
		
	
	
	
		
	
		
	
		wr_en = 0;
		r_addr1 = 28;
		r_addr2 = 29;
		w_addr = 0;
		w_data = 0;
		#(PERIOD);
		wr_en = 0;
		r_addr1 = 30;
		r_addr2 = 31;
		w_addr = 0;
		w_data = 0;
		#(PERIOD);
				
		
	end
      
endmodule

