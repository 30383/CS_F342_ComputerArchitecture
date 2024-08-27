`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 05:37:59
// Design Name: 
// Module Name: Mem_src_mux
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


module Mem_src_mux(
    input [31:0] PC_out,
    input [31:0] ALU_out,
    input IorD,
    output reg [31:0] Address
    );
    always@* begin
        if(IorD) Address = ALU_out;
        else Address = PC_out;
    end
endmodule
