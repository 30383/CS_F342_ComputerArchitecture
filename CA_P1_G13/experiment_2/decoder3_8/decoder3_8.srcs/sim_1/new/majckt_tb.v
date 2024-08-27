`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2024 16:23:13
// Design Name: 
// Module Name: majckt_tb
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



module majckt_tb();
    reg[2:0] S;
    wire Y;
    majckt obj( .S(S), .Y(Y));
    initial begin
    S=0;
    #10 S=1;
    #10 S=2;
    #10 S=3;
    #10 S=4;
    #10 S=5;
    #10 S=6;
    #10 S=7;
    #10
     $stop; 
    end
endmodule