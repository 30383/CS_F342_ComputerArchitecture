`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2024 18:46:36
// Design Name: 
// Module Name: prienc4_2
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


module prienc4_2(
    input [3:0] D,
    output [1:0] Q
    );
    wire w1, w2;
    or(Q[1], D[3], D[2]);
    not(w1, D[2]);
    and(w2, w1, D[1]);
    or(Q[0], w2, D[3]);
endmodule
