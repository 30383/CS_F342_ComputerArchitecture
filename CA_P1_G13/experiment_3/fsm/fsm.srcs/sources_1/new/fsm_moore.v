`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2024 16:56:41
// Design Name: 
// Module Name: fsm_moore
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


module fsm_moore(
input x,
input clk,
output reg o
    );
    parameter zero=0,one=1,two=2,three=3;
    reg [1:0]state=0;
    always @(posedge clk) begin
    case(state)
    zero:begin
    state=x?one:zero;
    end
    one:begin
    state=x?two:zero;
    end
    two:begin
    state=x?three:zero;
    end
    three:begin
    state=x?three:zero;
    end
    endcase
    end
    always @(state) begin
    if(state==three) o=1;
    else o=0;
    end
endmodule
