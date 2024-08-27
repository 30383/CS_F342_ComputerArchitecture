`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 15:20:05
// Design Name: 
// Module Name: PC_module
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


module PC_module(
    input clk,
    input rst,
    input [31:0] PC_in,
    output [31:0] PC_out
    );
    reg [31:0] PC;
    assign PC_out=PC;
    always@(posedge clk or posedge rst) begin
        if(rst) PC<=0;
        else PC<=PC_in;
    end
endmodule
