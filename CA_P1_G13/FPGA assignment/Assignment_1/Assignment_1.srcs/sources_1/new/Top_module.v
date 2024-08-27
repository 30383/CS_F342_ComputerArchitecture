`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 23:58:16
// Design Name: 
// Module Name: Top_module
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


module Top_module(
    input clk,
    input EN,
    input INIT,
    input [3:0] N,
    output EOC,
    output [6:0] Out
    );
    wire [6:0] MAO, SO, CO;
    wire [3:0] Nn;
    wire w0, w1;
    or(w0, INIT, EOC);
    and(w1, EN, EOC);
    REG obj1( clk, INIT, N[3], N[2], N[1], N[0], Nn[3], Nn[2], Nn[1], Nn[0]);
    SUM obj2( clk, w0, MAO, SO);
    Count_reg obj3( w0, clk, CO);
    MAIN_ADDER obj4( SO, CO, MAO);
    comp obj5( CO[3], CO[2], CO[1], CO[0], Nn[3], Nn[2], Nn[1], Nn[0], EOC);
    buffer obj6( MAO, w1, Out);
endmodule
