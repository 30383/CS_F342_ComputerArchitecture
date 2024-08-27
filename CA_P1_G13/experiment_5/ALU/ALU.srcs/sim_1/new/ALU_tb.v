`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2024 15:30:01
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb();
reg [31:0] IN1, IN2;
reg [1:0] control;
wire [31:0] Result; wire Zero;
ALU A(.IN1(IN1), .IN2(IN2), .control(control), .Result(Result), .Zero(Zero));
initial begin
    IN1 = 387;
    IN2 = 156;
    control =0;
    #10 control=1;
    #10 control=2;
    #10 control=3;
    #10 $finish();
end
endmodule
