`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/29/2024 04:44:19 PM
// Design Name: 
// Module Name: SCP_tb
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


module SCP_tb();
reg clk = 0, rst = 0;
wire [31:0] ALUout;
SCP obj(clk, rst, ALUout);
initial begin
    #5
    repeat(9) begin
        #5 clk=~clk;
    end
    $finish;
end
initial begin
    rst = 1;
    #1 rst = 0;
end
endmodule
