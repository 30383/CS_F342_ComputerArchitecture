`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 04:14:22
// Design Name: 
// Module Name: REG_B
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


module REG_B(
    input clk,
    input rst,
    input [31:0] data2,
    output [31:0] data_b
    );
    reg [31:0] B;
    assign data_b = B;
    always@(posedge clk or posedge rst) begin
        if(rst) B<=0;
        else B<=data2;
    end
endmodule
