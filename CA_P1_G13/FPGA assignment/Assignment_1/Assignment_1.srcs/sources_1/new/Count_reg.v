`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 23:46:27
// Design Name: 
// Module Name: Count_reg
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


module Count_reg(
    input clr,
    input clk,
    input [6:0] O
    );
    wire w0; 
    wire i0, i1, i2, i3, i4, i5, i6;
    wire n0, n1, n2, n3, n4, n5, n6;
    
    d_ff d0(clk, i0, O[0]);
    d_ff d1(clk, i1, O[1]);
    d_ff d2(clk, i2, O[2]);
    d_ff d3(clk, i3, O[3]);
    d_ff d4(clk, i4, O[4]);
    d_ff d5(clk, i5, O[5]);
    d_ff d6(clk, i6, O[6]);
    adder_module objk({O[6],O[5],O[4],O[3],O[2],O[1],O[0]}, 7'b0000001, {n6,n5,n4,n3,n2,n1,n0});
    and(i0, ~clr, n0);
    and(i1, ~clr, n1);
    and(i2, ~clr, n2);
    and(i3, ~clr, n3);
    and(i4, ~clr, n4);
    and(i5, ~clr, n5);
    and(i6, ~clr, n6);
     
    
endmodule
