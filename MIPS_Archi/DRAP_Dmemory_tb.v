`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:19:24 02/05/2014
// Design Name:   DRAP_Dmemory
// Module Name:   C:/LBYCP2AA/Module3/DRAP_Dmemory_tb.v
// Project Name:  Module3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DRAP_Dmemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
module DRAP_Dmemory_tb;

	// Inputs
	reg [31:0] data_in;
	reg [3:0] address;
	reg clk;
	reg write;
	reg read;

	// Outputs
	wire [31:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	DRAP_Dmemory uut (
		.data_out(data_out), 
		.data_in(data_in), 
		.address(address), 
		.clk(clk), 
		.write(write), 
		.read(read)
	);
	
	parameter PERIOD = 100;
	always begin
	clk = 1'b0;
	#(PERIOD/2) clk = 1'b1;
	#(PERIOD/2);
	end	
	
	initial begin
		// Initialize Inputs
		data_in = 0;
		address = 0;
		clk = 0;
		write = 0;
		read = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		data_in = 32'b01010101_01010101_01010101_01010101;
		address = 0;
		read=0;
		write = 1;
		#(PERIOD);
		write=0;
		read=1;
		address = 0;
		#(PERIOD);
		
		data_in = 32'b10101010_10101010_10101010_10101010;
		address = 1;
		read=0;
		write = 1;
		#(PERIOD);
		write=0;
		read=1;
		#(PERIOD);
		
		data_in = 32'b01010101_01010101_01010101_01010101;
		address = 126;
		read=0;
		write = 1;
		#(PERIOD);
		address = 126;
		write=0;
		read=1;
		#(PERIOD);
		
		data_in = 32'b10101010_10101010_10101010_10101010;
		address = 127;
		read=0;
		write = 1;
		#(PERIOD);
		#(PERIOD);
		#(PERIOD);
		address = 127;
		write=0;
		read=1;
		#(PERIOD);
		
		
		
	end
      
endmodule

