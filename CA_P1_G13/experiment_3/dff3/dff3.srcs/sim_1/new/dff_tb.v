`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 22:23:42
// Design Name: 
// Module Name: dff_tb
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


module dff_tb();
reg in, clk, rst;
wire out, q1, q0;
dff3 dut(.in(in), .clk(clk), .rst(rst), .out(out), .q1(q1), .q0(q0));
initial begin
    clk=0;
    in=0;
    repeat(20) begin
        #10 clk=~clk;
    end
    $finish;
end
initial begin
    #5 rst=1;
    #3 rst=0;
end
initial begin
    #10 in=1;
    #40 in=0;
    #30 in=1;
end
endmodule
