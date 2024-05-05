`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2024 11:43:51 PM
// Design Name: 
// Module Name: carry_gen_adder
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


module carry_gen_adder #(parameter data_width = 4)
    (input [data_width-1:0] a, 
     input [data_width-1:0] b, 
     input cin,
     output [data_width-1:0] sum, 
     output cout);
     
     wire [data_width-1:0] inp_gen;
     wire [data_width-1:0] inp_prop;
     wire [data_width-2:0] carry;
     
     assign inp_gen = a&b;
     assign inp_prop = a^b;
     assign carry[0] = inp_gen[0] | (cin & inp_prop[0]);
     assign carry[1] = inp_gen[1] | (inp_prop[1] & inp_gen[0]) | (&(inp_prop[1:0]) & cin);
     assign carry[2] = inp_gen[2] | (inp_prop[2] & inp_gen[1]) | (&(inp_prop[2:1]) & inp_gen[0]) | (&(inp_prop[2:0]) & cin);
     assign cout = inp_gen[3] | (inp_prop[3] & inp_gen[2]) | (&(inp_prop[3:2]) & inp_gen[1]) | (&(inp_prop[3:1]) & inp_gen[0]) | (&(inp_prop[3:0]) & cin);

     assign sum[0] = inp_prop[0] ^ cin;
     assign sum[data_width-1:1] = inp_prop[data_width-1:1] ^ carry[2:0];
     
     
     
endmodule
