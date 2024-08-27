`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 04:14:22
// Design Name: 
// Module Name: wd_mux
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


module wd_mux(
    input [31:0] ALU_out,
    input MemtoReg,
    input [31:0] MDR_out,
    output reg [31:0] WriteData
    );
    always@* begin
        case(MemtoReg)
            0 :  WriteData = ALU_out;
            1 :  WriteData = MDR_out;
        endcase
    end
endmodule
