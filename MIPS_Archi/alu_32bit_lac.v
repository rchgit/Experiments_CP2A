`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:13:04 02/19/2014 
// Design Name: 
// Module Name:    alu_32bit_lac 
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
module alu_32bit_lac(
output [31:0] result,
output co,
input [31:0] a, b, less,
input cin, binv,
input [1:0] sel
    );
wire [31:0] out [3:0];
wire [31:0] btemp;
assign btemp = binv?(1+~b):b;
assign out[0][31:0] = a[31:0] & b[31:0];
assign out[1][31:0] = a[31:0] | b[31:0];
LAC_32bit M1(out[2],co,a,btemp,cin);
assign out[3][31:0] = (a[31:0] < b [31:0]);
assign result[31:0] = out[sel][31:0];

endmodule
