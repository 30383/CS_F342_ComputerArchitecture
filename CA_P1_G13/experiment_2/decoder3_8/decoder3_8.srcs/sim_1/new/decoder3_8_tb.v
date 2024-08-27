`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2024 16:13:42
// Design Name: 
// Module Name: decoder3_8_tb
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


//module decoder3_8_tb();
//    reg [2:0] S;
//    wire [7:0] I;
//    decoder3_8 obj(.S(S), .I(I));
//    initial begin
//        S=0;
//        #10 S=1;
//        #10 S=2;
//        #10 S=3;
//        #10 S=4;
//        #10 S=5;
//        #10 S=6;
//        #10 S=7;
//        #10;
//    $stop;
//    end
//endmodule

module majckt_tb();
    reg[2:0] S;
    wire Y;
    majckt obj( .S(S), .Y(Y));
    initial begin
    S=0;
    #10 S=1;
    #10 S=2;
    #10 S=3;
    #10 S=4;
    #10 S=5;
    #10 S=6;
    #10 S=7;
    #10
     $stop; 
    end

endmodule
