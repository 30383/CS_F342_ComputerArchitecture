`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 16:12:21
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
    input clk, rst,
    input [4:0] rs,
    input [4:0] rt,
    input [4:0] rd,
    input [31:0] WriteData,
    output reg [31:0] A=0,
    output reg [31:0] B=0
    );
    reg [31:0] register [14:0];
    integer j;
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            register[0]<=32'h0; register[1]<=32'h10; register[2]<=32'h90;
            register[3]<=32'h0; register[4]<=32'hB1; register[5]<=32'hA0;
            register[6]<=32'h0; register[7]<=32'hBEFF556A; register[8]<=32'hFFEE7129;
            register[9]<=32'h0; register[10]<=32'hFAFF7EF; register[11]<=32'hEBAF735D;
            register[12]<=32'h0; register[13]<=32'h0; register[14]<=32'h0;
        end
        else begin
            A<=register[rs];
            B<=register[rt];
            register[rd]<=WriteData;
        end
    end
endmodule
