`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2024 15:52:55
// Design Name: 
// Module Name: ALU_control_tb
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


module ALU_control_tb();
reg [1:0] ALUop;
reg [5:0] F;
wire [3:0] operation;
ALU_control A111(.ALUop(ALUop), .F(F), .operation(operation));

initial begin
    ALUop=0; F=0;
    #10 F=15;
    #10 ALUop=1; F=2;
    #10 F=13;
    #10 ALUop=2; F=16;
    #10 F=18;
    #10 F=10;
    #10 ALUop=3; F=2;
    #10 F=34;
    #10 F=4;
    #10 F=5;
    #10 $finish;
end
endmodule
