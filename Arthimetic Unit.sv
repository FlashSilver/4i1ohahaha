`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2016 05:31:55 PM
// Design Name: 
// Module Name: Arthimetic Unit
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


module ArthimeticUnit(
    input   logic op1,
    input   logic op2,
    input   logic c_in,
    output  logic result_A,
    output  logic carry_A,
    input   logic [2:0] opsel
    );
    
    logic tempB, tempC;
    
    B_MUX Bin       (
                    .op2(op2),
                    .opsel(opsel),
                    .B(tempB)
                    );
                
    C_MUX Cin       (
                    .c_in(c_in),
                    .opsel(opsel),
                    .C(tempC)
                    );
    
    FA_1B Fin       (
                    .A(op1),
                    .B(tempB),
                    .C(tempC),
                    .result(result_A),
                    .c_out(carry_A)
                    );
    
endmodule
