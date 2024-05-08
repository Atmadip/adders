`timescale 1ns / 1ps

module half_adder(input a, 
                  input b , 
                  output cout, 
                  output sum);

assign sum = a^b;
assign cout = a&b;

endmodule