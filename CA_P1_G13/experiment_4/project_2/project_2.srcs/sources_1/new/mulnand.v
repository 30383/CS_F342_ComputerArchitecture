`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2024 21:51:03
// Design Name: 
// Module Name: mulnand
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


//module mulnand(
//input [1:0] a, b,
//output [3:0] y);
////wire a0n, a1n, b0n, b2n;
//wire [14:0] w;
////nand n1(a0n,a[0], a[0]);
////nand n2(a1n, a[1], a[1]);
////nand n3(b0n, b[0], b[0]);
////nand n4(b1n, b[1], b[1]);
//nand n5(w[0], a[1], b[1]);
//nand n6(w[1], a[0], b[0]);
//nand n7(w[3], w[0], w[0]);
//nand n8(w[4], w[1], w[1]);
//nand n9(w[5], w[3], w[4]);
//nand n10(y[3], w[5], w[5]); 
//nand n11(w[6], w[3], w[1]);
//nand n12(y[2], w[6], w[6]);
//nand n13(w[7], a[0], b[1]);
//nand n14(w[8], w[7], w[7]);
//nand n15(w[9], a[1], b[0]);
//nand n16(w[10], a[1], b[0]);
//nand n17(w[11], w[10], w[10]);
//nand n18(w[12], b[1], a[0]);
//nand n19(w[13], w[8], w[9]);
//nand n20(w[14], w[11], w[12]);
//nand n21(y[1], w[13], w[14]);
//assign y[0]=w[4];
//endmodule

module ourhalfadder(input A, B, output S, C);
    wire t1, t2, t3;
    nor( t1, A, B);
    nor( t2, A, A);
    nor( t3, B, B);
    nor( C, t2, t3);
    nor( S, C, t1);
endmodule

module mulnor(input [1:0] a,b, output [3:0] y);
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, wa, wb, wc, wd, we, wf;
    nor(w1, a[0], a[0]);
    nor(w2, b[0], b[0]);
    nor(y[0], w1, w2);
    
    nor(w3, a[1], a[1]);
    nor(w4, b[0], b[0]);
    nor(w5, w3, w4);
    
    nor(w6, a[0], a[0]);
    nor(w7, b[1], b[1]);
    nor(w8, w6, w7);

    ourhalfadder a1( w5, w8, y[1], w9);
    nor(wa, a[1], a[1]);
    nor(wb, b[1], b[1]);
    nor(wc, wb, wa);

    ourhalfadder a2( wc, w9, y[2], y[3]);
endmodule