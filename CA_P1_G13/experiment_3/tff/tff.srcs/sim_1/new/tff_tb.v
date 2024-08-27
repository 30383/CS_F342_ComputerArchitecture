`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 15:25:12
// Design Name: 
// Module Name: tff_tb
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


module tff_tb();
reg T, rst, clk;
wire Q;
tff dut(.T(T), .rst(rst), .clk(clk), .Q(Q));
initial begin
    clk=0;
    repeat(200) begin
        #10 clk=~clk;
    end
    $finish;
end
initial begin
    #5 rst=1;
    #3 rst=0;
end
initial begin
    T=0;
    repeat(10) begin
    #50 T=1;
    #100 T=0;
    end
end
endmodule
