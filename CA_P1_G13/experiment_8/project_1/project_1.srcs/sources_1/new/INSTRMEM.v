`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 15:23:25
// Design Name: 
// Module Name: INSTRMEM
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


module INSTRMEM(
    input clk,
    input rst,
    input [31:0] Address,
    output reg [31:0] Instruction=0
    );
    reg [7:0] IMEM [27:0];
    integer i;
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            IMEM[3]<=0; IMEM[2]<=3; IMEM[1]<=8'b10001100; IMEM[0]<=8'b01000001;
            IMEM[7]<=0; IMEM[6]<=2; IMEM[5]<=8'b10011000; IMEM[4]<=8'b10100100;
            IMEM[11]<=0; IMEM[10]<=2; IMEM[9]<=8'b00100101; IMEM[8]<=8'b00000111;
            IMEM[15]<=0; IMEM[14]<=3; IMEM[13]<=8'b00110001; IMEM[12]<=8'b01101010;
            for(i=16; i<=27; i=i+1) begin
                IMEM[i]<=0;
            end
        end
        else Instruction <= { IMEM[Address+3], IMEM[Address+2], IMEM[Address+1], IMEM[Address+0]};
    end
endmodule
