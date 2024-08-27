`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 23:37:19
// Design Name: 
// Module Name: adder_module
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

module fa(
    input a, b, cin,
    output s, cout
);
    wire w1, w2, w3;
    xor(s, a, b, cin);
    and(w1, a, b);
    and(w2, b, cin);
    and(w3, cin, a);
    or(cout, w1, w2, w3);
endmodule

module adder_module(
    input [6:0] A,
    input [6:0] B,
    output [6:0] O
    );
    wire c1, c2, c3, c4, c5, c6, c7;
    fa obja(A[0], B[0], 1'b0, O[0], c1);
    fa objb(A[1], B[1], c1, O[1], c2);
    fa objc(A[2], B[2], c2, O[2], c3);
    fa objd(A[3], B[3], c3, O[3], c4);
    fa obje(A[4], B[4], c4, O[4], c5);
    fa objf(A[5], B[5], c5, O[5], c6);
    fa objg(A[6], B[6], c6, O[6], c7);
endmodule
