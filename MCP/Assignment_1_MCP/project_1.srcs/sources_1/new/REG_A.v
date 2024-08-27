`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 04:14:22
// Design Name: 
// Module Name: REG_A
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


module REG_A(
    input clk,
    input rst,
    input [31:0] data1,
    output [31:0] data_a
    );
    reg [31:0] A;
    assign data_a = A;
    always@(posedge clk or posedge rst) begin
        if(rst) A<=0;
        else A<=data1;
    end
endmodule
