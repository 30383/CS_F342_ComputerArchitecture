`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2024 19:26:13
// Design Name: 
// Module Name: ripplecarry_tb
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


module carrylookahead_tb();
reg [3:0] a;
reg[3:0] b;
reg cin;
wire [3:0]sum;
wire cout;

ripplecarry obj(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

initial begin
cin=0;
a=1;
b=2;
#10
a=10;
b=15;
#10
$finish();
end
endmodule
