`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2024 18:53:29
// Design Name: 
// Module Name: fulladder_tb
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


module fulladder_tb();
reg a, b, c;
wire s, carry;

full_adder obj(.a(a), .b(b), .c(c), .s(s), .carry(carry));

initial begin
a=0;b=0;c=0;
#10
a=0;b=0;c=1;
#10
a=0;b=1;c=0;
#10
a=0;b=1;c=1;
#10
a=1;b=0;c=0;
end
endmodule
