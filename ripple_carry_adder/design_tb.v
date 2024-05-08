`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2024 02:57:58 PM
// Design Name: 
// Module Name: ripple_adder_tb
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


module ripple_adder_tb#(parameter data_width = 8);

reg [data_width-1:0] A;
reg[data_width-1:0] B;
reg C_in;
wire C_out;
wire [data_width-1:0] Sum;

ripple_adder UUT(A, B, C_in, C_out, Sum);

initial begin
A = 8'b 10101010;
B = 8'b 01010101;
C_in = 1'b 0;
#20;

A = 8'b 11111111;
B = 8'b 00000000;
C_in = 1'b 1;
#20;

A = 8'b 11111100;
B = 8'b 00000111;
C_in = 1'b 1;
#20;
$finish;

end
endmodule
