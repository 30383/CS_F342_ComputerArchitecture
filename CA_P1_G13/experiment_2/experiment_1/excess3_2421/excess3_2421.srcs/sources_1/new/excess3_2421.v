`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 22:03:16
// Design Name: 
// Module Name: excess3_2421
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


module excess3_2421(W,X,Y,Z,A,B,C,D);
    output W,X,Y,Z;
    input A,B,C,D;
    wire t1, t2, t3, t4, t5, t6, t7, t8;
    or (t1, B,C,D);
    and (t2, B, C, D);
    xnor(t3, C, D);
    xor(t4, C, D);
    nor (t5, D);
    and(t6, A, t1);
    and(t7, A, t3);
    and(t8, B, t4);
    or (W, A, 0);
    or (X, t6, t2);
    or (Y, t7, t8);
    or (Z, t5, 0);
        
endmodule
