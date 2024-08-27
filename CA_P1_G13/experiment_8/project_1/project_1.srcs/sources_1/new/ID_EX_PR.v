`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 16:38:36
// Design Name: 
// Module Name: ID_EX_PR
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


module ID_EX_PR(
    input clk,
    input rst,
    input [70:0] ID_EX_in,
    output [70:0] ID_EX_out
    );
    reg [70:0] ID_EX;
    assign ID_EX_out = ID_EX;
    always@(posedge rst) begin
        ID_EX<=0;
    end
    always@(negedge clk) begin
        ID_EX<=ID_EX_in;
    end
endmodule
