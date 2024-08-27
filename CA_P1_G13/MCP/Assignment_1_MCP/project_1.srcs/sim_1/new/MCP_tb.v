`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 06:23:57
// Design Name: 
// Module Name: MCP_tb
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


module MCP_tb();
reg clk, rst;
MCP dut(clk, rst);
initial begin
    rst=1; #2 rst=0;
end
initial begin
    clk=1;
    repeat(16) begin
        #5 clk=~clk;
    end
    $finish;
end
endmodule
