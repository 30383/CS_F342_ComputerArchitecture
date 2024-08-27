`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2024 00:13:01
// Design Name: 
// Module Name: cmp_dataflow
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


module cmp_dataflow(
    input a2,a1,a0, b2, b1, b0,
    output G,E,L
    );
    assign G = (a2&(~b2)) + ((a2~^b2)&(a1&(~b1))) + ((a2~^b2)&(a1~^b1)&(a0&(~b0)));
    assign L = (b2&(~a2)) + ((a2~^b2)&(b1&(~a1))) + ((a2~^b2)&(a1~^b1)&(b0&(~a0)));
    assign E = (a2~^b2)&(a1~^b1)&(a0~^b0);    
endmodule
