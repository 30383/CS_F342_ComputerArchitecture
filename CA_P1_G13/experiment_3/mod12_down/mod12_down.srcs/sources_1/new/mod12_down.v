`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 23:26:41
// Design Name: 
// Module Name: mod12_up_down
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


module mod12_up_down(
    input up, clk, rst,
    output reg [3:0] count
    );
    always@(posedge clk, posedge rst) begin
        if(rst) begin
            count<=0;
        end
        else begin
            if(up) begin
                count=count+1;
                if(count>11) begin
                    count=0;
                end
            end
            else begin
                count=count-1;
                if(count>11) begin
                    count=11;
                end
            end
        end
    end    
endmodule
