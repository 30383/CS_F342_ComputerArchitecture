`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 04:14:22
// Design Name: 
// Module Name: REG_ALU_out
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


module REG_ALU_out(
    input clk,
    input rst,
    input [31:0] ALU_res,
    output [31:0] ALU_out
    );
    reg [31:0] ALU;
    assign ALU_out = ALU;
    always@(posedge clk or posedge rst) begin
        if(rst) ALU<=0;
        else ALU<=ALU_res;
    end
endmodule
