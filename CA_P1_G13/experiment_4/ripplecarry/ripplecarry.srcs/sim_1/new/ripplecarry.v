`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2024 18:28:29
// Design Name: 
// Module Name: ripplecarry
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module full_adder(
input a, b, c,
output s, carry);

assign s=a^b^c;
assign carry=(a&b)|(b&c)|(c&a);

endmodule

module ripplecarry(
input [3:0] a, b,
input cin,
output [3:0] sum,
output cout);
wire [2:0] c;

assign c[0]=(a[0] & b[0]) | ((a[0]^b[0]) & cin);
assign c[1]=(a[1] & b[1]) | ((a[1]^b[1]) & c[0]);
assign c[2]=(a[2] & b[2]) | ((a[2]^b[2]) & c[1]);
assign cout=(a[3] & b[3]) | ((a[3]^b[3]) & c[2]);

full_adder fa1 (a[0], b[0], cin, sum[0], c[0]);
full_adder fa2 (a[1], b[1], c[0], sum[1], c[1]);
full_adder fa3 (a[2], b[2], c[1], sum[2], c[2]);
full_adder fa4 (a[3], b[3], c[2], sum[3], cout);

endmodule
