`timescale 1ns / 1ps
module dff3( 
    input in, clk, rst,
    output reg out, q1, q0
    ); //blocking statements
    always@(posedge clk, posedge rst) begin
        if(rst) begin
            out=0;
            q1=0;
            q0=0;
        end
        else begin
            q0=in;
            q1=q0;
            out=q1;
           
            
        end
    end
endmodule
//module dff3( 
//    input in, clk, rst,
//    output reg out, q1, q0
//    ); //non-blocking statements
//    always@(posedge clk, posedge rst) begin
//        if(rst) begin
//            out<=0;
//            q1<=0;
//            q0<=0;
//        end
//        else begin
//            q0<=in;
//            q1<=q0;
//            out<=q1; 
//        end
//    end
//endmodule