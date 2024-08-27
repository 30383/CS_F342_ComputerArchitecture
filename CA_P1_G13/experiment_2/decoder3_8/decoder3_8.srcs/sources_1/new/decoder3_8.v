`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2024 16:05:18
// Design Name: 
// Module Name: decoder3_8
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
module majckt( input [2:0] S, output reg Y);
    wire [7:0] I;
    decoder3_8 d1(S, I);
    always@(S)
    begin
    if ((S==3)|(S==5)|(S==6)|(S==7))
        Y=(I[0]|I[1]|I[2]|I[3]|I[4]|I[5]|I[6]|I[7]);
    else 
        Y=0;
    end
endmodule

module decoder3_8(input [2:0] S, output reg [7:0] I);
always@(S or I)
    begin
    if(S==0)
        I=1;
    else if(S==1)
        I=2;
    else if(S==2)
        I=4;
    else if(S==3)
        I=8;
    else if(S==4)
        I=16;
    else if(S==5)
        I=32;
    else if(S==6)
        I=64;
    else if(S==7)
        I=128;         
    end
endmodule


