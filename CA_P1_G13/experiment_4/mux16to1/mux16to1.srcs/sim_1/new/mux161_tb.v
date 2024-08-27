`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2024 15:45:05
// Design Name: 
// Module Name: mux161_tb
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


module mux161_tb();
reg [15:0] I;
reg [3:0] S;
wire out;
mux161 dut(.I(I), .S(S), .out(out));
initial begin
    I = 387;
    S=0;
    #10 S=3;
    #10 S=1;
    #10 S=8;
end
endmodule
