`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:07:07 02/12/2014
// Design Name:   alu_1bit
// Module Name:   C:/LBYCP2AA/Module4/tb_alu_1bit.v
// Project Name:  Module4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_1bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
module tb_alu_1bit;
// Inputs
reg a;
reg b;
reg cin;
reg binv;
reg less;
reg sel1;
reg sel0;
// Outputs
wire result;
wire co;
// Instantiate the Unit Under Test (UUT)
alu_1bit uut (
.result(result),
.co(co),
.a(a),
.b(b),
.cin(cin),
.binv(binv),
.less(less),
.sel1(sel1),
.sel0(sel0)
);
initial begin
// Initialize Inputs
a = 0;
b = 0;
cin = 0;
binv = 0;
less = 0;
sel1 = 0;
sel0 = 0;

// Wait 100 ns for global reset to finish
#100;
// Add stimulus here
a = 0; b = 0; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
a = 1; b = 0; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
a = 0; b = 1; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
a = 1; b = 1; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
a = 0; b = 0; cin = 1; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
a = 1; b = 0; cin = 1; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
a = 0; b = 1; cin = 1; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
a = 1; b = 1; cin = 1; binv = 0; less = 0; sel1 = 0; sel0 = 0; #50;
a = 0; b = 0; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 1; #50;
a = 1; b = 0; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 1; #50;
a = 0; b = 1; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 1; #50;
a = 1; b = 1; cin = 0; binv = 0; less = 0; sel1 = 0; sel0 = 1; #50;
a = 0; b = 0; cin = 1; binv = 0; less = 0; sel1 = 0; sel0 = 1; #50;
a = 1; b = 0; cin = 1; binv = 0; less = 0; sel1 = 0; sel0 = 1; #50;
a = 0; b = 1; cin = 1; binv = 0; less = 0; sel1 = 0; sel0 = 1; #50;
a = 1; b = 1; cin = 1; binv = 0; less = 0; sel1 = 0; sel0 = 1; #50;
a = 0; b = 0; cin = 0; binv = 0; less = 0; sel1 = 1; sel0 = 0; #50;
a = 1; b = 0; cin = 0; binv = 0; less = 0; sel1 = 1; sel0 = 0; #50;
a = 0; b = 1; cin = 0; binv = 0; less = 0; sel1 = 1; sel0 = 0; #50;
a = 1; b = 1; cin = 0; binv = 0; less = 0; sel1 = 1; sel0 = 0; #50;
a = 0; b = 0; cin = 1; binv = 0; less = 0; sel1 = 1; sel0 = 0; #50;
a = 1; b = 0; cin = 1; binv = 0; less = 0; sel1 = 1; sel0 = 0; #50;
a = 0; b = 1; cin = 1; binv = 0; less = 0; sel1 = 1; sel0 = 0; #50;
a = 1; b = 1; cin = 1; binv = 0; less = 0; sel1 = 1; sel0 = 0; #50;
a = 0; b = 0; cin = 0; binv = 0; less = 0; sel1 = 1; sel0 = 1; #50;
a = 1; b = 0; cin = 0; binv = 0; less = 0; sel1 = 1; sel0 = 1; #50;
a = 0; b = 1; cin = 0; binv = 0; less = 0; sel1 = 1; sel0 = 1; #50;
a = 1; b = 1; cin = 0; binv = 0; less = 0; sel1 = 1; sel0 = 1; #50;
a = 0; b = 0; cin = 1; binv = 0; less = 0; sel1 = 1; sel0 = 1; #50;
a = 1; b = 0; cin = 1; binv = 0; less = 0; sel1 = 1; sel0 = 1; #50;
a = 0; b = 1; cin = 1; binv = 0; less = 0; sel1 = 1; sel0 = 1; #50;
a = 1; b = 1; cin = 1; binv = 0; less = 0; sel1 = 1; sel0 = 1; #50;
end
endmodule
