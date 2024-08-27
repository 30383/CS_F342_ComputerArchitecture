`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2024 15:25:01
// Design Name: 
// Module Name: Pipeline_Processor_tb
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


module Pipeline_Processor_tb( );
reg clk, rst;
Pipeline_Processor dut(clk, rst);
initial begin
    rst=1;
    #2 rst=0;
end
initial begin
    clk=0;
    repeat(15) begin
        #5 clk=~clk;
    end
    $finish;
end
endmodule
