`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:09:20 02/19/2014 
// Design Name: 
// Module Name:    LAC_16bit 
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
module LAC_16bit(
 output [15:0]s,
  output cout,
  input [15:0]a,
  input [15:0]b,
  input cin
    );
  wire [15:0]p,g,c;
  assign p[15:0]=a[15:0]^b[15:0];
  assign g[15:0]=a[15:0]&b[15:0];
  assign c[0]=g[0]|(p[0]&cin);
  assign c[15:1]=g[15:1]|(p[15:1]&c[15:0]);
  assign s[0]=p[0]^cin;
  assign s[15:1]=p[15:1]^c[15:0];
  assign cout=c[15];

endmodule
