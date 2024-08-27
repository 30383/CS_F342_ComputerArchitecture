`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 04:57:50
// Design Name: 
// Module Name: MCP
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


module MCP(
    input clk,
    input rst
    );
    wire [31:0] ALU_res, Jumpaddress, ALU_out, PC_in, PC_out, Address, data_b, MemData, MDR_out, WriteData, data1, data2, data_a, signextendedimm, signextendedimmls, ALU_A, ALU_B;
    wire [4:0] rs, rt, rd, rd_out;
    wire [5:0] Opcode, F;
    wire [15:0] imm;
    wire [25:0] jump_imm;
    wire [1:0] ALUSrcB, PCSource, ALUop; wire [1:0] operation;
    wire PCWrite, PCWriteCond, Zero, IorD, MemRead, MemWrite, IRWrite, MemtoReg, RegDst, RegWrite, ALUSrcA;
    reg write;
    //write of PC using PCWrite, PCWriteCond and Zero
    //CONTROL SIGNALS - PCSource, PCWriteCond, PCWrite, IorD, MemRead, MemWrite, IRWrite, MemtoReg, RegDst, RegWrite, ALUSrcA, ALUSrcB(2bits), ALUop(2bits), 
    always@* begin
    write = PCWrite + (PCWriteCond&(~Zero));
    end
    PC_src_mux obj1(ALU_res, Jumpaddress, ALU_out, PCSource, PC_in);
    PC obj2 (clk, rst, PC_in, write, PC_out);
    
    Mem_src_mux obj3a ( PC_out, ALU_out, IorD, Address);
    MEMORY obj3b (clk, rst, Address, data_b, MemRead, MemWrite, MemData);
    
    INSTRREG obj4 ( clk, rst, IRWrite, MemData, Opcode, rs, rt, rd, imm, jump_imm, F);
    MDR obj5 (clk, rst, MemData, MDR_out);
    
    wd_mux obj6 (ALU_out, MemtoReg, MDR_out, WriteData);
    rd_mux obj7 (RegDst, rt, rd, rd_out);
    
    REGFILE obj8 (clk, rst, rs, rt, rd_out, WriteData, RegWrite, data1, data2);
    REG_A obj9 (clk, rst, data1, data_a);
    REG_B obj10 (clk, rst, data2, data_b);
    
    SIGNEXT obj11 (imm, signextendedimm, signextendedimmls);
    
    alu_a_mux obj12 (ALUSrcA, PC_out, data_a, ALU_A);
    alu_b_mux obj13 (ALUSrcB, signextendedimm, signextendedimmls, data_b, ALU_B);
    
    ALU_control obj14 (ALUop , operation);
    ALU obj15 (ALU_A, ALU_B, operation, ALU_res, Zero);
    
    REG_ALU_out obj16 (clk, rst, ALU_res, ALU_out);
    
    Jump_calc obj17 (jump_imm, PC_out, Jumpaddress);  
    
    Main_control obj(clk, rst, Opcode, PCWrite, PCWriteCond, IorD, MemRead, MemWrite, IRWrite, MemtoReg, ALUSrcA, RegWrite, RegDst, ALUSrcB, PCSource, ALUop);
    
endmodule
