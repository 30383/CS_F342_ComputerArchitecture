`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 22:24:05
// Design Name: 
// Module Name: excess3_2421_tb
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


module excess3_2421_tb();
    reg A,B,C,D;
    wire W,X,Y,Z;
    excess3_2421 obj1(.W(W), .X(X), .Y(Y), .Z(Z), .A(A), .B(B), .C(C), .D(D));
    reg[3:0] i;
    initial
    begin
    A=0; B=0; C=1; D=1;
 #30 A=0; B=1; C=0; D=0;
 #30 A=0; B=1; C=0; D=1;
 #30 A=0; B=1; C=1; D=0;
 #30 A=0; B=1; C=1; D=1;
 #30 A=1; B=0; C=0; D=0;
 #30 A=1; B=0; C=0; D=1;
 #30 A=1; B=0; C=1; D=0;
 #30 A=1; B=0; C=1; D=1;
 #30 A=1; B=1; C=0; D=0;
 #30;
 $stop; 
end
endmodule
