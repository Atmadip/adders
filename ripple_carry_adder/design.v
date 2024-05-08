`timescale 1ns / 1ps



module ripple_adder #(parameter data_width = 8)
               (input [data_width-1:0] A,
                input [data_width-1:0] B,
                input C_in,
                output C_out,
                output [data_width-1:0] Sum);
                
                wire [6:0] carry;
                
           full_adder fa0(A[0], B[0], C_in, Sum[0], carry[0]);
           genvar i;
           
           generate
           
           for(i = 1; i<data_width-1; i=i+1) begin
           full_adder fa1(A[i], B[i], carry[i-1], Sum[i], carry[i]);
           end
           endgenerate
           
           full_adder fa2(A[7], B[7], carry[6], Sum[7], C_out);
           
endmodule
