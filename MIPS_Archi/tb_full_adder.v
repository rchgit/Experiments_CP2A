`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:02:49 02/12/2014
// Design Name:   full_adder
// Module Name:   C:/LBYCP2AA/Module4/tb_full_adder.v
// Project Name:  Module4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
module tb_full_adder;
// Inputs
reg a;
reg bmux;
reg cin;
// Outputs
wire sum;
wire co;
// Instantiate the Unit Under Test (UUT)
full_adder uut (
.sum(sum),
.co(co),
.a(a),
.bmux(bmux),
.cin(cin)
);
initial begin
// Initialize Inputs
a = 0;
bmux = 0;
cin = 0;
// Wait 100 ns for global reset to finish
#100;
// Add stimulus here
a = 0; bmux = 0; cin = 0; #50;
a = 1; bmux = 0; cin = 0; #50;
a = 0; bmux = 1; cin = 0; #50;
a = 1; bmux = 1; cin = 0; #50;
a = 0; bmux = 0; cin = 1; #50;
a = 1; bmux = 0; cin = 1; #50;
a = 0; bmux = 1; cin = 1; #50;
a = 1; bmux = 1; cin = 1; #50;
end
endmodule
