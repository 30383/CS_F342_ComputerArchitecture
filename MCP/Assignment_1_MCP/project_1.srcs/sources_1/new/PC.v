`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 04:14:22
// Design Name: 
// Module Name: PC
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
// hey, who are you? 

module PC(
    input clk,
    input rst,
    input [31:0] PC_in,
    input write,
    output [31:0] PC_out
    );
    reg [31:0] PC;
    assign PC_out = PC;
    always@(posedge clk or posedge rst) begin
        if(rst) PC<=0; 
        else begin
            if(write) PC<=PC_in;
        end
    end
endmodule
