`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/29/2024 03:14:59 PM
// Design Name: 
// Module Name: SCP
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


module SCP(input clk, rst, output ALUout);
    reg [31:0] PC=0;
    
    wire [1:0] control; 
    wire [31:0] ALUinA, ALUinB; wire [4:0] rd;
    wire [31:0] address; wire [31:0] INSTR;
    wire [31:0] data1; wire [31:0] data2;
    wire [31:0] ALUout; wire regwrite; 
    wire [31:0] signextendedimm, signextendedimmls;
    wire zero;
    
    //module instantiations
    DATAMEM object1(PC, rst, address);
    INSTRMEM object2(rst, address, INSTR);
    REGFILE object3(rst, regwrite, INSTR[25:21], INSTR[20:16], rd, ALUout, data1, data2);
    ALU object4(ALUinA, ALUinB, control, ALUout, zero);  
    signextend object5( INSTR[15:0], signextendedimm, signextendedimmls);  
    main_control object6(INSTR, data1, data2, signextendedimm, zero, regwrite, ALUinA, ALUinB, rd) ;
    allu_control object7(INSTR[31:26], control);
    
    always@(posedge clk) begin
        if(INSTR==0) 
            PC=PC+4;
        else if(INSTR[31:26]==0)
           PC=PC+4;
        else if(INSTR[31:26]==1) 
            PC=PC+4;
        else if(INSTR[31:26]==2) begin
            if(zero==1) PC=PC+4+signextendedimmls;  
            else PC=PC+4;
            end
    end
endmodule

module DATAMEM(input [31:0] PC, input rst, output wire [31:0] address);
    reg [7:0] DM [24:0];
    always@(posedge rst) begin
        DM[0]<=0; DM[1]<=0; DM[2]<=0; DM[3]<=0; DM[4]<=1; DM[5]<=0; DM[6]<=0; DM[7]<=0;
        DM[8]<=2; DM[9]<=0; DM[10]<=0; DM[11]<=0; DM[12]<=3; DM[13]<=0; DM[14]<=0; DM[15]<=0;
        DM[16]<=0; DM[17]<=0; DM[18]<=0; DM[19]<=0; DM[20]<=0; DM[21]<=0; DM[22]<=0; DM[23]<=0; DM[24]<=0;
    end
    assign address = {DM[PC+3], DM[PC+2], DM[PC+1], DM[PC]};
endmodule

module INSTRMEM(input rst, input [31:0] address, output wire [31:0] INSTR);
    reg [31:0] instrmem [7:0];
    always@(posedge rst) begin
        instrmem[1]<= 32'b000000_00001_00010_00011_00000_000000;
        instrmem[2]<= 32'b000001_00100_00101_0000000000011110; 
        instrmem[3]<= 32'b000010_00001_00010_0000000000000101; 
        instrmem[0]<=0; instrmem[4]<=0; instrmem[5]<=0; instrmem[6]<=0; instrmem[7]<=0; 
    end
    assign INSTR = instrmem[address];
endmodule

module REGFILE(input rst, regwrite, input [4:0] rs,input [4:0] rt,input [4:0] rd, input [31:0] ALUout, output wire [31:0] data1, data2);
    reg [31:0] registerfile [31:0];
    always@(posedge rst) begin
        registerfile[0] <= 0; registerfile[1] <= 27; registerfile[2] <= 27; registerfile[3] <= 0; registerfile[4] <= 128; registerfile[5] <= 0;
        registerfile[6] <= 45; registerfile[7] <= 45; registerfile[8] <= 0; registerfile[9] <= 0; registerfile[10] <= 0; registerfile[11] <= 0;
        registerfile[12] <= 0; registerfile[13] <= 0; registerfile[14] <= 0; registerfile[15] <= 0; registerfile[16] <= 0; registerfile[17] <= 0; 
        registerfile[18] <= 0; registerfile[19] <= 0; registerfile[20] <= 0; registerfile[21] <= 0; registerfile[22] <= 0; registerfile[23] <= 0;
        registerfile[24] <= 0; registerfile[25] <= 0; registerfile[26] <= 0; registerfile[27] <= 0; registerfile[28] <= 0; registerfile[29] <= 0; 
        registerfile[30] <= 0; registerfile[31] <= 0;  
    end
    assign data1 = registerfile[rs];
    assign data2 = registerfile[rt];
    always@* begin
        if(regwrite) 
            registerfile[rd] = ALUout;
    end
endmodule

module signextend(input [15:0] immediate, output reg [31:0] signextendedimm, output reg[31:0] signextendedimmls);
    always@* begin
        if(immediate[15]==1) begin
            signextendedimm = {16'b1111111111111111, immediate};
            signextendedimmls = signextendedimm<<2; end
        else begin
            signextendedimm = {16'b0000000000000000, immediate};
            signextendedimmls = signextendedimm<<2; end
    end
endmodule 

module main_control(input [31:0] INSTR, data1, data2, signextendedimm, input zero, output reg regwrite, output reg [31:0] ALUinA, ALUinB, output reg [4:0] rd);
    always@* begin
        if(INSTR==0) begin
            regwrite<=0; ALUinA<=0; ALUinB<=0; rd<=0;
        end
        else if(INSTR[31:26]==0) begin
            regwrite<=1; 
            ALUinA<=data1; ALUinB<=data2;
            rd<=INSTR[15:11];
        end
        else if(INSTR[31:26]==1) begin
            regwrite<=1;
            ALUinA<=data1; ALUinB<=signextendedimm; rd<=INSTR[20:16];
        end
        else if(INSTR[31:26]==2) begin
            regwrite<=0; 
            ALUinA<=data1; ALUinB<=data2;         
        end
    end
endmodule

module allu_control(input [5:0] INSTR, output reg [1:0] control);
    always @* begin
        if(INSTR==0) 
            control<=3;
        else if(INSTR==1) 
            control<=0;
        else if(INSTR==2) 
            control<=1;      
    end
endmodule
