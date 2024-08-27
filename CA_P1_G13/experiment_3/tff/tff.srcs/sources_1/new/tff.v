`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 15:15:04
// Design Name: 
// Module Name: tff
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


module tff(
    input T, rst, clk,
    output reg Q
    );
    always@(posedge clk, posedge rst)
    begin
        if(rst) begin
            Q <= 0;
        end
        else begin
            if(T) begin
                Q<=~Q;
            end
            else begin 
                Q<=Q;
            end
        end
    end
endmodule
