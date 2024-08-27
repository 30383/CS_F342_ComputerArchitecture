`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 23:22:54
// Design Name: 
// Module Name: SUM
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


module SUM(
    input clk,
    input clr,
    input [6:0] S,
    output [6:0] O
    );
    wire i7, i6, i5, i4, i3, i2, i1, i0, w0;
    not(w0, clr);
    and( i0, w0, S[0]);
    and( i1, w0, S[1]);
    and( i2, w0, S[2]);
    and( i3, w0, S[3]);
    and( i4, w0, S[4]);
    and( i5, w0, S[5]);
    and( i6, w0, S[6]);
    d_ff d0( clk, i0, O[0]);
    d_ff d1( clk, i1, O[1]);
    d_ff d2( clk, i2, O[2]);
    d_ff d3( clk, i3, O[3]);
    d_ff d4( clk, i4, O[4]);
    d_ff d5( clk, i5, O[5]);
    d_ff d6( clk, i6, O[6]);
    
    
endmodule
