`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 05:42:02
// Design Name: 
// Module Name: Jump_calc
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


module Jump_calc(
    input [25:0] jump_imm,
    input [31:0] PC,
    output [31:0] Jumpaddress
    );
    assign Jumpaddress = { PC[31:28], jump_imm, 2'b00};
endmodule
