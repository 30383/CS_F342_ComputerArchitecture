`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2024 16:12:03
// Design Name: 
// Module Name: test_of_something
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


module OR_GATE_tb();
reg a,b;
wire y;
something exp(.A(a), .B(b), .Y(y));
initial
begin
a=0; b=0;
#10 a=0; b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#10
$finish;
end
endmodule
