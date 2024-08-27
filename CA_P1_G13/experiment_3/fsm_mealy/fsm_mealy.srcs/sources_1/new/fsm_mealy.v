`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2024 17:14:45
// Design Name: 
// Module Name: fsm_mealy
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


module fsm_mealy(
input i,input clk,
output reg o
    );
    reg [1:0]state=0;
    parameter zero=0,one=1,two=2,three=3;
    always @(posedge clk) begin
    case(state)
    zero:begin
    state=i?one:zero;
    o=i?0:0;
       end 
    one:begin
    state=i?two:zero;
    o=i?0:0;
       end
    two:begin
    state=i?three:zero;
    o=i?1:0;
       end 
    three:begin
    state=i?three:zero;
    o=i?1:0;
       end
    endcase  
    end
endmodule
