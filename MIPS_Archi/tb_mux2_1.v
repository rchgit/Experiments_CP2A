`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:04:43 02/12/2014
// Design Name:   mux2_1
// Module Name:   C:/LBYCP2AA/Module4/tb_mux2_1.v
// Project Name:  Module4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux2_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
module tb_mux2_1;
// Inputs
reg binv;
reg b;
// Outputs
wire bmux;
// Instantiate the Unit Under Test (UUT)
mux2_1 uut (
.bmux(bmux),
.binv(binv),
.b(b)
);
parameter SYSCLK = 100;
always begin
b = 1'b0;
#(SYSCLK/4) b = 1'b1;
#(SYSCLK/4);
end
initial begin
// Initialize Inputs
binv = 0; b = 0;
// Wait 100 ns for global reset to finish
#100;
// Add stimulus here
binv = 0; #(SYSCLK*8);
binv = 1; #(SYSCLK*8);
end
endmodule
