`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 04:14:22
// Design Name: 
// Module Name: PC_src_mux
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


module PC_src_mux(
    input [31:0] ALU_res,
    input [31:0] Jumpaddress,
    input [31:0] ALU_out,
    input [1:0] PCSource,
    output reg [31:0] PC_next
    );
    always@* begin
        case(PCSource) 
            0 : PC_next = ALU_res;
            1: PC_next = Jumpaddress;
            2: PC_next = ALU_out;
        endcase
    end
endmodule
