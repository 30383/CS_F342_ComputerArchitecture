`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 04:14:22
// Design Name: 
// Module Name: INSTRREG
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


module INSTRREG(
    input clk,
    input rst,
    input IRWrite,
    input [31:0] INSTR,
    output reg [5:0] Opcode,
    output reg [4:0] rs,
    output reg [4:0] rt,
    output reg [4:0] rd,
    output reg [15:0] imm,
    output reg [25:0] jump_imm,
    output reg [5:0] F
    );
    reg [31:0] INSTRUCTION;
    always@* begin
            if(IRWrite) INSTRUCTION=INSTR;
            Opcode <= INSTRUCTION[31:26];
            rs <= INSTRUCTION[25:21];
            rt <= INSTRUCTION[20:16];
            rd <= INSTRUCTION[15:11];
            imm <= INSTRUCTION[15:0];
            jump_imm <= INSTRUCTION[25:0];
            F <= INSTRUCTION[5:0];
    end
   
endmodule
