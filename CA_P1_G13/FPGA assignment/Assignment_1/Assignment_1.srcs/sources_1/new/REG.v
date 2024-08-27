`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 23:02:30
// Design Name: 
// Module Name: REG
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


module REG(
    input clk,
    input load,
    input n3, n2, n1, n0,
    output o3, o2, o1, o0
    );
    wire w1;
    and(w1, clk, load);
    d_ff d3(w1, n3, o3);
    d_ff d2(w1, n2, o2);
    d_ff d1(w1, n1, o1);
    d_ff d0(w1, n0, o0);
    
    
endmodule
