`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:11:04 02/12/2014
// Design Name:   alu_4bit
// Module Name:   C:/LBYCP2AA/Module4/tb_alu_4bit.v
// Project Name:  Module4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps
module tb_alu_4bit;
// Inputs
reg [3:0] a;
reg [3:0] b;
reg [3:0] less;
reg cin;
reg binv;
reg sel1;
reg sel0;
// Outputs
wire [3:0] result;
wire co;
// Instantiate the Unit Under Test (UUT)
alu_4bit uut (
.result(result),
.co(co),
.a(a),
.b(b),
.less(less),
.cin(cin),
.binv(binv),
.sel1(sel1),
.sel0(sel0)
);
initial begin
// Initialize Inputs
a = 0; b = 0; less = 0; cin = 0; binv = 0;sel1 = 0;sel0 = 0;
// Wait 100 ns for global reset to finish
#100;
// Add stimulus here
//func =00 logical and
a = 4'h5;b = 0;less = 0;cin = 0;binv = 0;sel1 = 0;sel0 = 0;#50;
a = 4'h5;b = 4'h1;less = 0;cin = 0;binv = 0;sel1 = 0;sel0 = 0;#50;
a = 4'h5;b = 4'h4;less = 0;cin = 0;binv = 0;sel1 = 0;sel0 = 0;#50;
a = 4'h5;b = 4'hF;less = 0;cin = 0;binv = 0;sel1 = 0;sel0 = 0;#50;
//func =01 logical or
a = 4'h5;b = 0;less = 0;cin = 0;binv = 0;sel1 = 0;sel0 = 0;#50;
a = 4'h5;b = 4'h1;less = 0;cin = 0;binv = 0;sel1 = 0;sel0 = 1;#50;
a = 4'h5;b = 4'h4;less = 0;cin = 0;binv = 0;sel1 = 0;sel0 = 1;#50;
a = 4'h5;b = 4'hF;less = 0;cin = 0;binv = 0;sel1 = 0;sel0 = 1;#50;
//func = 10 add
a = 4'h5;b = 0;less = 0;cin = 0;binv = 0;sel1 = 1;sel0 = 0;#50;
a = 4'h5;b = 4'h1;less = 0;cin = 0;binv = 0;sel1 = 1;sel0 = 0;#50;
a = 4'h5;b = 4'h4;less = 0;cin = 0;binv = 0;sel1 = 1;sel0 = 0;#50;
a = 4'h5;b = 4'hF;less = 0;cin = 0;binv = 0;sel1 = 1;sel0 = 0;#50;
//func = 10 subtract but binv = 1
a = 4'h5;b = 0;less = 0;cin = 0;binv = 1;sel1 = 1;sel0 = 0;#50;
a = 4'h5;b = 4'h1;less = 0;cin = 0;binv = 1;sel1 = 1;sel0 = 0;#50;
a = 4'h5;b = 4'h4;less = 0;cin = 0;binv = 1;sel1 = 1;sel0 = 0;#50;
a = 4'h5;b = 4'hF;less = 0;cin = 0;binv = 1;sel1 = 1;sel0 = 0;#50;
$finish;
end
endmodule
