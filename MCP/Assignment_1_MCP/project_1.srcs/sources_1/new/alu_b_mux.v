`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 04:14:22
// Design Name: 
// Module Name: alu_b_mux
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


module alu_b_mux(
    input [1:0] ALUSrcB,
    input [31:0] signextendedimm,
    input [31:0] signextendedimmls,
    input [31:0] data_b,
    output reg [31:0] ALU_B
    );
    always@* begin
        case(ALUSrcB) 
            0 :  ALU_B = data_b;
            1 :  ALU_B = 4;
            2 :  ALU_B = signextendedimm;
            3 :  ALU_B = signextendedimmls;
        endcase
    end
endmodule
