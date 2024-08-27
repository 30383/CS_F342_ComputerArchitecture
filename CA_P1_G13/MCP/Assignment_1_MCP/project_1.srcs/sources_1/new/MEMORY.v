`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 04:14:22
// Design Name: 
// Module Name: MEMORY
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










module MEMORY(
    input clk,
    input rst,
    input [31:0] Address,
    input [31:0] WriteData,
    input MemRead,
    input MemWrite,
    output reg [31:0] MemData
    );
    reg [7:0] MEM [49:0];
    always@* begin
        if(MemRead) MemData <= {MEM[Address+3], MEM[Address+2], MEM[Address+1], MEM[Address+0]};
    end
    
    integer i=0;
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            MEM[3]<=8'b00100000; MEM[2]<=8'b01000001; MEM[1]<=8'b00000000; MEM[0]<=8'b00010100; 
            MEM[7]<=8'b00010100; MEM[6]<=8'b10000011; MEM[5]<=8'b00000000; MEM[4]<=8'b00000100;
            for(i=8; i<50; i=i+1) begin
                MEM[i]<=0;
            end
        end 
        else if(MemWrite) begin
                MEM[Address] <=  WriteData[7:0];
                MEM[Address+1] <=  WriteData[15:8];
                MEM[Address+2] <=  WriteData[23:16];
                MEM[Address+3] <=  WriteData[31:24];
        end
    end
endmodule
