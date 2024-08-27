`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 16:43:33
// Design Name: 
// Module Name: EX_WB
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


module EX_WB_PR(
    input clk, rst,
    input [36:0] EX_WB_in,
    output [36:0] EX_WB_out
    );
    reg [36:0] EX_WB=0;
    assign EX_WB_out = EX_WB;
    always@(posedge rst) EX_WB<=0;
    always@(negedge clk) begin
        EX_WB<=EX_WB_in;
    end
endmodule
