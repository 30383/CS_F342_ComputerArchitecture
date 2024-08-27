`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 04:14:22
// Design Name: 
// Module Name: rd_mux
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


module rd_mux(
    input RegDst,
    input [4:0] rt,
    input [4:0] rd_in,
    output reg [4:0] rd_out
    );
    always@* begin
        case(RegDst)
            0 :  rd_out = rt;
            1 :  rd_out = rd_in;
        endcase
    end
endmodule
