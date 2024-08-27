`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 05:07:37
// Design Name: 
// Module Name: Main_control
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


module Main_control(
input clk, rst,
input [5:0] Opcode,
output reg PCWrite, PCWriteCond, IorD, MemRead, MemWrite, IRWrite, MemtoReg, ALUSrcA, RegWrite, RegDst,
output reg [1:0] ALUSrcB, PCSource, ALUop);
reg [2:0] state, nstate;
always@(posedge clk, posedge rst) begin
    if(rst) begin 
                PCWrite <=1 ; PCWriteCond <= 0 ; IorD <= 0; MemRead <= 1;
                MemWrite <= 0; IRWrite <= 1; MemtoReg <= 0; ALUSrcA <= 0; 
                RegWrite <= 0; RegDst <= 0;
                ALUSrcB <= 1; PCSource <= 0; ALUop <= 0; //2bits - 0,1,2,3 value
                state<=0; nstate<=1;
    end
    else begin
        state=nstate;
        case(state) 
            3'b000: begin
                PCWrite <=1 ; PCWriteCond <= 0 ; IorD <= 0; MemRead <= 1;
                MemWrite <= 0; IRWrite <= 1; MemtoReg <= 0; ALUSrcA <= 0; 
                RegWrite <= 0; RegDst <= 0;
                ALUSrcB <= 1; PCSource <= 0; ALUop <= 0; //2bits - 0,1,2,3 value
                nstate<=1;
            end
            3'b001: begin
                PCWrite <=0 ; PCWriteCond <=0 ; IorD <= 0; MemRead <= 0;
                MemWrite <= 0; IRWrite <= 0; MemtoReg <= 0; ALUSrcA <= 0; 
                RegWrite <= 0; RegDst <= 0;
                ALUSrcB <= 3; PCSource <= 0; ALUop <= 0; //2bits - 0,1,2,3 value
                if(Opcode==8) nstate<=2;
                else nstate<=4;
            end
            3'b010: begin
                PCWrite <=0 ; PCWriteCond <=0 ; IorD <= 0; MemRead <= 0;
                MemWrite <= 0; IRWrite <= 0; MemtoReg <= 0; ALUSrcA <= 1; 
                RegWrite <= 0; RegDst <= 0;
                ALUSrcB <= 2; PCSource <= 0; ALUop = 0; //2bits - 0,1,2,3 value
                nstate<=3;
            end
            3'b011: begin
                PCWrite <=0 ; PCWriteCond <=0 ; IorD <= 0; MemRead <= 0;
                MemWrite <= 0; IRWrite <= 0; MemtoReg <= 0; ALUSrcA <= 0; 
                RegWrite <= 1; RegDst <= 0;
                ALUSrcB <= 0; PCSource <= 0; ALUop <= 0; //2bits - 0,1,2,3 value
                nstate<=0;
            end
            3'b100: begin
                PCWrite <=0 ; PCWriteCond <= 1 ; IorD <= 0; MemRead <= 0;
                MemWrite <= 0; IRWrite <= 0; MemtoReg <= 0; ALUSrcA <= 1; 
                RegWrite <= 0; RegDst <= 0;
                ALUSrcB <= 0; PCSource <= 2; ALUop <= 1; //2bits - 0,1,2,3 value
                nstate<=0;
            end
            endcase
       end
end
endmodule
