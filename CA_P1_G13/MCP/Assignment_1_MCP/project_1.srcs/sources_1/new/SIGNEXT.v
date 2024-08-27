`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 04:14:22
// Design Name: 
// Module Name: SIGNEXT
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


module SIGNEXT(
    input [15:0] immediate,
    output reg [31:0] signextendedimm,
    output reg [31:0] signextendedimmls
    );
    always@* begin
            signextendedimm <= {16'b0000_0000_0000_0000, immediate};
            signextendedimmls <= signextendedimm<<2;
    end
endmodule
