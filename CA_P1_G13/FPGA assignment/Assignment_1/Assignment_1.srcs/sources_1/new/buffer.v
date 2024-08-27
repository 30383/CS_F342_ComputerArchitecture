`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 23:59:02
// Design Name: 
// Module Name: buffer
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


module buffer(
    input [6:0] In,
    input e,
    input [6:0] Out
    );
    and(Out[0], e, In[0]);
    and(Out[1], e, In[1]);
    and(Out[2], e, In[2]);
    and(Out[3], e, In[3]);
    and(Out[4], e, In[4]);
    and(Out[5], e, In[5]);
    and(Out[6], e, In[6]);
endmodule
