`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 04:14:22
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
    input [4:0] rd,
    input [31:0] data,
    input RegWrite,
    output reg [31:0] data1,
    output reg [31:0] data2
    );
    reg [31:0] REGISTER[31:0];
    integer i;
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            REGISTER[0]<=0; REGISTER[1]<=0; REGISTER[2]<=48; REGISTER[3]<=36; REGISTER[4]<=37;
            for(i=5; i<32; i=i+1) begin
                REGISTER[i]<=0;
            end
        end
        else begin
            if(RegWrite) REGISTER[rd]<=data;
            data1 <= REGISTER[rs];
            data2 <= REGISTER[rt];
        end
    end
endmodule
