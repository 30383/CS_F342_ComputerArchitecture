`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2024 22:54:52
// Design Name: 
// Module Name: mulnand_tb
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


module mulnor_tb();
reg [1:0] a, b;
wire [3:0] y;
mulnor obj(.a(a), .b(b), .y(y));
initial begin
a=0;b=0;
#10 a=0;b=1;
#10 a=0;b=2;
#10 a=0;b=3;
#10 a=1;b=0;
#10 a=1;b=1;
#10 a=1;b=2;
#10 a=1;b=3;
#10 a=2;b=0;
#10 a=2;b=1;
#10 a=2;b=2;
#10 a=2;b=3;
#10 a=3;b=0;
#10 a=3;b=1;
#10 a=3;b=2;
#10 a=3;b=3;
#10 $finish();
end
endmodule
