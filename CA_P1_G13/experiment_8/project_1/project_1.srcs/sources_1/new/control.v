`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 16:32:19
// Design Name: 
// Module Name: control
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


module control(
    input [2:0] opcode,
    output reg [1:0] ALUop=0
    );
    always@* begin
        case(opcode) 
            3'b101 : ALUop = 2'b10;
            3'b110 : ALUop = 2'b11;
            3'b111 : ALUop = 2'b00;
            3'b100 : ALUop = 2'b01;
        endcase
    end
endmodule
