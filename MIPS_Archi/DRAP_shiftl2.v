`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:18 01/22/2014 
// Design Name: 
// Module Name:    DRAP_shiftl2 
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
//DRAP shift left 2
module DRAP_shiftl2(shl2,sign_ext);
output [31:0] shl2;
input [29:0] sign_ext;
assign shl2 = {sign_ext[29:0],2'b0};
endmodule
