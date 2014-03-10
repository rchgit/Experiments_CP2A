`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:39:40 02/19/2014 
// Design Name: 
// Module Name:    mux2_1_32bit 
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
module mux2_1_32bit(
	output [31:0] bmux,
    input [31:0] b,
    input binv
    );
always
begin
	if(binv)
		bmux <= ~b;
	else
		bmux <= b;
end

endmodule
