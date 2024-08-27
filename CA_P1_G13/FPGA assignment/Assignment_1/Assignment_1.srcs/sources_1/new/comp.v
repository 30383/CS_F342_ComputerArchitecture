`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 23:17:28
// Design Name: 
// Module Name: comp
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


module comp (
input q0,q1,q2,q3,
input c0,c1,c2,c3,
output comp1
);

wire w1,w2,w3,w4,w5,w6,w7;
xor x1 (w1,c0,q0);
xor x2 (w2,c1,q1);
xor x3 (w3,c2,q2);
xor x4 (w4,c3,q3);

nor x5 (comp1, w1, w2, w3, w4);
endmodule
