`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:19:26 01/22/2014
// Design Name:   Ifetch_mux1
// Module Name:   C:/LBYCP2A EQ1/MIPS_Archi/Ifetch_mux1_tb.v
// Project Name:  MIPS_Archi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ifetch_mux1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ifetch_mux1_tb;
// Inputs
reg [31:0] op0;
reg [31:0] op1;
reg sel;
// Outputs
wire [31:0] mux_out1;
// Instantiate the Unit Under Test (UUT)
Ifetch_mux1 uut (
.mux_out1(mux_out1),
.op0(op0),
.op1(op1),
.sel(sel)
);
initial begin
// Initialize Inputs
op0 = 0;
op1 = 0;
sel = 0;
// Wait 100 ns for global reset to finish
#100;
// Add stimulus here
op0 = 32'h55555555;
op1 = 32'haaaaaaaa;
sel = 0;
#100;
op0 = 32'h55555555;
op1 = 32'haaaaaaaa;
sel = 1;
#100;
//op0 = 0;
//op1 = 0;
//sel = 0;
//#100;
end
endmodule

