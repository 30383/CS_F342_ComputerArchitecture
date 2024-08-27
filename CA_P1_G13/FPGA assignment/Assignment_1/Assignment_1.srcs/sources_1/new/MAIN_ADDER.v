`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 23:39:05
// Design Name: 
// Module Name: MAIN_ADDER
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


module MAIN_ADDER(
    input [6:0] S,
    input [6:0] Count,
    output [6:0] Output
    );
    adder_module objj(S, Count, Output);
endmodule
