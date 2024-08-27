`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2024 17:03:28
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
    reg clk=0;
    reg i=0;
    wire o;
    fsm_mealy dut(i,clk,o);
    initial forever #5 clk=!clk;
    initial begin
    #15 i=1;
    #50 i=0;
    #10 i=1;
    #10 i=0;
    #10 i=1;
    end
endmodule
