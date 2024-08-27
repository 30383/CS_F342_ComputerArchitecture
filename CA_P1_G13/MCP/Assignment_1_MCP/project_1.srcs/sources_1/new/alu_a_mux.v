`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 04:14:22
// Design Name: 
// Module Name: alu_a_mux
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


module alu_a_mux(
    input ALUSrcA,
    input [31:0] PC,
    input [31:0] data_a,
    output reg [31:0] ALU_A
    );
    always@* begin
        case(ALUSrcA) 
            0 :  ALU_A = PC;
            1:  ALU_A = data_a;
        endcase
    end
endmodule
