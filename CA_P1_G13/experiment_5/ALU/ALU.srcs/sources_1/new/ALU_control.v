`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2024 15:45:27
// Design Name: 
// Module Name: ALU_control
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


module ALU_control(
    input [1:0] ALUop,
    output reg [1:0] operation
    );
    //rewrite the alu control, wait idk what to do ;-;
    always@* begin
        case(ALUop) 
            2'b00: operation<=2; //0 == add
            2'b01: operation<=3; //1 == sub
            2'b10: operation<=0; //2 == and (not exactly, should be for R type instruction)
            2'b11: operation<=1; //3 == nor (not exactly, shoulld be for R type instruction)
        endcase
    end
endmodule
