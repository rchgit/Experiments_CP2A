`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:23:32 02/19/2014 
// Design Name: 
// Module Name:    LAC_32bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module LAC_32bit(
output [31:0]s,
  output cout,
  input [31:0]a,
  input [31:0]b,
  input cin
    );
	wire c0;
	LAC_16bit M1(s[15:0],c0,a[15:0],b[15:0],cin);
	LAC_16bit M2(s[31:16],cout,a[31:16],b[31:16],c0);

endmodule
