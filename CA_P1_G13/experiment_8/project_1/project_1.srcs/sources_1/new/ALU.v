`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 15:34:34
// Design Name: 
// Module Name: ALU
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
module ALUand(
    input [31:0] IN1,
    input [31:0] IN2,
    output [31:0] Result
    );
    assign Result=(IN1&IN2);
endmodule

module ALUnor(
    input [31:0] IN1,
    input [31:0] IN2,
    output [31:0] Result
    );
    assign Result=~(IN1|IN2);
endmodule

module ALUadd(
    input [31:0] IN1,
    input [31:0] IN2,
    output [31:0] Result
    );
    assign Result=IN1+IN2;
endmodule

module ALUsub(
    input [31:0] IN1,
    input [31:0] IN2,
    output [31:0] Result
    );
    assign Result=IN1-IN2;
endmodule



module ALU(
    input [31:0] IN1,
    input [31:0] IN2,
    input [1:0] control,
    output reg [31:0] Result,
    output reg Zero
    );
    wire [31:0] r1, r2, r3,r4;
    ALUnor A1(IN1, IN2, r1);
    ALUsub A2(IN1, IN2, r2);
    ALUand A3(IN1, IN2, r3);
    ALUadd A4(IN1, IN2, r4);
    always@(IN1 or IN2 or control) begin
        case(control)
            0 : Result = r3; //and
            1 : Result = r1; //nor
            2 : Result = r4; //add
            3 : Result = r2; //sub
        endcase
        if(Result==0) Zero=1;
        else Zero=0;
    end
endmodule


