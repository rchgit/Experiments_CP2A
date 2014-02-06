`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:02:32 02/05/2014 
// Design Name: 
// Module Name:    DRAP_Irom 
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
//DRAP INSTRUCTION MEMORY UNIT
module DRAP_Irom (iROMdata, address, clk);
	output reg [31: 0] iROMdata;
	input wire [6: 0] address;
	input wire clk;

	reg [6:0] addr;
	
	always @(posedge clk)
		addr <= address;

	// reg [31: 0] Irom [127: 0];

	always @ *
		case (addr)
			7'h0 : iROMdata = 32'h02734820;
			7'h4 : iROMdata = 32'h02734820;
			7'h8 : iROMdata = 32'h02364820;
			7'hC : iROMdata = 32'h8d280000;
		endcase
endmodule
