`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 04:14:22
// Design Name: 
// Module Name: MDR
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


module MDR(
    input clk,
    input rst,
    input [31:0] MemData,
    output [31:0] MDR_out
    );
    reg [31:0] MemDataReg;
    assign MDR_out = MemDataReg;
    always@(posedge clk or posedge rst) begin
        if(rst) MemDataReg <= 0;
        else MemDataReg <= MemData;
    end
endmodule
