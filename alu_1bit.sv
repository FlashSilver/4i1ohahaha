`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2016 02:45:53 PM
// Design Name: 
// Module Name: alu_1bit
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


module alu_1bit(
    input op1,
    input op2,
    input cin,
    input [2:0] opsel,
    input mode,
    output result,
    output c_flag,
    output z_flag,
    output o_flag,
    output s_flag
    );
    
    logic temp1, temp2, temp3,temp4;
    LogU a1 (
            .a(op1),
            .b(op2),
            .opsel0(opsel[0]),
            .opsel1(opsel[1]),
            .opsel2(opsel[2]),
            .cin(cin),
            .out(temp1),
            .cout(temp2)
            );

    ArithmeticUnit a2 (
            .op1(op1),
            .op2(op2),
            .c_in(cin),
            .result_A(temp3),
            .carry_A(temp4),
            .opsel(opsel)
            );

    mux21_str l1 (              //upper mux results
                .a(temp3),
                .b(temp1),
                .sel(mode),
                .out(result)
                );
    mux21_str l2 (              //lower mux carryouts
                  .a(temp4),
                  .b(temp2),
                  .sel(mode),
                  .out(c_flag)
                  );   
                
                             
                 
              
endmodule
