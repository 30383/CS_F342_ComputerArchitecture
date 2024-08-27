`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2024 04:34:13 PM
// Design Name: 
// Module Name: REGFILE
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


module REGFILE(
    input clk,
    input rst,
    input [4:0] rs,
    input [4:0] rt,
    input [4:0] rd_out,
    input [31:0] WDRF,
    input RegWrite,
    output [31:0] data1,
    output [31:0] data2
    );
endmodule
