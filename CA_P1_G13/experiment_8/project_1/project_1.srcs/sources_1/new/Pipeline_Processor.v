`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 16:47:44
// Design Name: 
// Module Name: Pipeline_Processor
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


module Pipeline_Processor(
    input clk,
    input rst
    );
    //wire and reg declarations come here
    wire [31:0] PC_in, PC_out, Instruction, Instruction_out, A, B, ALU_result;
    wire [1:0] ALUop;
    wire [70:0] ID_EX_out;
    wire [36:0] EX_WB_out;
    wire Zero;
    //module instantiations
    PC_module obj1(clk, rst, PC_in, PC_out);
    PC_adder obj2(PC_out, PC_in);
    INSTRMEM obj3(clk, rst, PC_out, Instruction);
    
    IF_ID_PR obj4(clk, rst, Instruction, Instruction_out);
    
    REGFILE obj5(clk, rst, Instruction_out[9:5], Instruction_out[4:0], 
    EX_WB_out[36:32], EX_WB_out[31:0], A, B);
    control obj6(Instruction_out[17:15], ALUop);
    
    ID_EX_PR obj7(clk, rst, {Instruction_out[14:10], ALUop, A, B}, ID_EX_out);
    
    ALU obj8(ID_EX_out[63:32], ID_EX_out[31:0], ID_EX_out[65:64], ALU_result, Zero);
    
    EX_WB_PR obj9( clk, rst, {ID_EX_out[70:66], ALU_result}, EX_WB_out);
endmodule
