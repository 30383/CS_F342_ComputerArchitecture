`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 22:21:07
// Design Name: 
// Module Name: d_ff
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

module d_latch(
    input clk,
    input d,
    output q
    );
    wire dbar, x, y, qbar;
    not not1(dbar,d);
    nand nand1(x,clk,d);
    nand nand2(y,clk,dbar);
    nand nand3(qbar,q,y);
    nand nand4(q,qbar,x);
endmodule

module d_ff(
    input clk,
    input d,
    output q
    );
    wire q1;
    d_latch d1(~clk, d, q1); //master_slave combination
    d_latch d2(clk, q1, q);
endmodule 
