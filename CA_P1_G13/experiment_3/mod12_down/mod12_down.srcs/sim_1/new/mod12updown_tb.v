`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 23:31:11
// Design Name: 
// Module Name: mod12_tb
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


module mod12_tb();
reg up, rst, clk;
wire [3:0] count;
mod12_up_down dut(.up(up), .rst(rst), .clk(clk), .count(count));
initial begin
    up=1; rst=0; clk=0;
    repeat(55) begin
        #10clk=~clk;
    end
end
initial begin
    #2 rst=1;
    #5 rst=0;
end
initial begin
    #240 up=0;
end
endmodule
