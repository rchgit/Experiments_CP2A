`timescale 1ns / 1ps
module DRAP_Imemory_tb;
// Inputs
reg [31:0] data_in;
reg [6:0] address;
reg clk;
reg write;
// Outputs
wire [31:0] data_out;
// Instantiate the Unit Under Test (UUT)
DRAP_Imemory uut (
.data_out(data_out), 
.data_in(data_in), 
.address(address), 
.clk(clk), 
.write(write)
);
parameter PERIOD = 100;
	always begin
	clk = 1'b0;
	#(PERIOD/4) clk = 1'b1;
	#(PERIOD/4);
	end 
	initial begin
			// Initialize Inputs
			data_in = 0;
			address = 0;
			write = 1;
			// Wait 100 ns for global reset to finish
			#100;
			// Add stimulus here
			data_in = 32'b01010101_01010101_01010101_01010101;
			address = 0;
			write = 1;
			#(PERIOD);
			data_in = 32'b10101010_10101010_10101010_10101010;
			address = 1;
			write = 1;
			#(PERIOD);
			data_in = 32'b01010101_01010101_01010101_01010101;
			address = 126;
			write = 1;
			#(PERIOD);
			data_in = 32'b10101010_10101010_10101010_10101010;
			address = 127;
			write = 1;
			#(PERIOD);
			#(PERIOD);
			#(PERIOD);
			data_in = 0;
			address = 0;
			write = 0;
			#(PERIOD);
			data_in = 0;
			address = 1;
			write = 0;
			#(PERIOD);
			data_in = 0;
			address = 32;
			write = 0;
			#(PERIOD);
			data_in = 0;
			address = 126;
			write = 0;
			#(PERIOD);
			data_in = 0;
			address = 127;
			write = 0;
			#(PERIOD);
	end 
endmodule