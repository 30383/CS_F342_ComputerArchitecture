`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 23:37:42
// Design Name: 
// Module Name: cmp_gate
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


module cmp_gate(
    input a2,a1,a0, b2, b1, b0,
    output G,E,L
    );
    wire g2, g1, g0, e2, e1, e0, l2, l1, l0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10;
    not(t1, a0);
    not(t2, a1);
    not(t3, a2);
    not(t4, b0);
    not(t5, b1);
    not(t6, b2);
    
    and(g0, a0, t4);
    xnor(e0, a0, b0);
    and(l0, t1, b0);
    
    and(g1, a1, t5);
    xnor(e1, a1, b1);
    and(l1, t2, b1);
    
    and(g2, a2, t6);
    xnor(e2, a2, b2);
    and(l2, t3, b2);
    
    and(t7, e2, g1);
    and(t8, e2, e1, g0);
    and(t9, e2, l1);
    and(t10, e2, e1, l0);
    
    or (G, g2, t7, t8);    
    and (E, e2, e1, e0);
    or (L, l2, t9, t10);
        
endmodule

module cmp_dataflow(
    input a2,a1,a0, b2, b1, b0,
    output G,E,L
    );
    assign G = (a2&(~b2)) + ((a2~^b2)&(a1&(~b1))) + ((a2~^b2)&(a1~^b1)&(a0&(~b0)));
    assign L = (b2&(~a2)) + ((a2~^b2)&(b1&(~a1))) + ((a2~^b2)&(a1~^b1)&(b0&(~a0)));
    assign E = (a2~^b2)&(a1~^b1)&(a0~^b0);    
endmodule

module cmp_behavioral( input [2:0] A, B,
    output reg G, L, E);
    always@(A or B) begin
    
    if (A>B) begin
        G = 1;
        E <= 0;
        L <= 0; end
    else if (A==B) begin 
        G <= 0;
        E <= 1;
        L <= 0; end
    else if (A<B) begin
        G <= 0;
        E <= 0; 
        L <= 1; end
    end
endmodule
