`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 22:21:45
// Design Name: 
// Module Name: tb
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


module tb();
reg clk, EN, INIT;
reg [3:0] N;
wire EOC;
wire [6:0] Out;
Top_module dut (clk, EN, INIT, N, EOC, Out);

initial begin
    clk=0; EN=1; INIT=1; N=6;
    repeat(30) begin
        #5
        clk=~clk;
    end
    $finish;
end
initial begin
     #6 INIT=0;
end
endmodule
