`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2024 15:26:23
// Design Name: 
// Module Name: mux16_1
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
module mux4_1(input i3, i2, i1, i0, s1, s0,
    output y );
    assign y = ((~s0)&(~s1)&i0)|((s0)&(~s1)&i1)|((~s0)&(s1)&i2)|((s0)&(s1)&i3);
endmodule

module mux16_1(
    input [15:0] I, input [3:0] S,
    output Y);
    wire y1, y2, y3, y4;
    mux4_1 m1(I[3], I[2], I[1], I[0], S[1], S[0], y1);
    mux4_1 m2(I[7], I[6], I[5], I[4], S[1], S[0], y2);
    mux4_1 m3(I[11], I[10], I[9], I[8], S[1], S[0], y3);
    mux4_1 m4(I[15], I[14], I[13], I[12], S[1], S[0], y4);
    mux4_1 m5( y4, y3, y2, y1, S[3], S[2], Y);
endmodule
