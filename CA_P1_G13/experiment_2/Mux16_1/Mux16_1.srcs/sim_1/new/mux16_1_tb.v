`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2024 15:41:30
// Design Name: 
// Module Name: mux16_1_tb
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


module mux16_1_tb();
    reg [15:0] I;
    reg [3:0] S;
    wire Y;
    mux16_1 obj(.I(I), .S(S), .Y(Y));
    initial begin
        I = 387;
        S=0;
        #10 S=1;
        #10 S=2;
        #10 S=3;
        #10 S=4;
        #10 S=5;
        #10 S=6;
        #10 S=7;
        #10 S=8;
        #10 S=9;
        #10 S=10;
        #10 S=11;
        #10 S=12;
        #10 S=13;
        #10 S=14;
        #10 S=15;   
        #10;
        $finish;     
    end
    
endmodule
