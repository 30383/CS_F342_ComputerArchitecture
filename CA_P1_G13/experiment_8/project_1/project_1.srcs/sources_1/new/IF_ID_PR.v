`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 15:55:20
// Design Name: 
// Module Name: IF_ID_PR
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


module IF_ID_PR(
    input clk, rst,
    input [31:0] INSTR_in,
    output [31:0] INSTR_out
    );
    reg [31:0] IF_ID;
    assign INSTR_out=IF_ID;
    always@(posedge rst) begin
        IF_ID<=0;
    end
    always@(negedge clk) begin
        if(INSTR_in) IF_ID<=INSTR_in;
        else IF_ID<=IF_ID;
    end
endmodule
