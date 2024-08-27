`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2024 18:51:00
// Design Name: 
// Module Name: prienc4_2_tb
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


module prienc4_2_tb();
    reg [3:0] D;
    wire [1:0] Q;
    prienc4_2 obj1(.D(D), .Q(Q));
    reg [3:0] i;
    initial 
    begin
    for(i=0; i<16; i=i+1) begin
        D=i;#10;
    end
    $finish;
    end
endmodule
