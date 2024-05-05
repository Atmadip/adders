`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2024 12:41:40 AM
// Design Name: 
// Module Name: carry_gen_adder_tb
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


module carry_gen_adder_tb #(parameter data_width = 4);

reg [data_width-1:0] a,b;
reg cin;
wire [data_width-1:0] sum;
wire cout;

carry_gen_adder UUT (a, b, cin, sum, cout);

initial begin
    a = 4'b 1010;
    b = 4'b 0101;
    cin = 1'b 0;
    #20;
    
    a = 4'b 1111;
    b = 4'b 0001;
    #20;
    
    $finish;
end

endmodule
