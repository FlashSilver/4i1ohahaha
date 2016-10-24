`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2016 09:57:26 PM
// Design Name: 
// Module Name: alu
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


module alu(
    input [128:0] a, b,
    input [3:0] s,
    output out
    );
    reg [8:0]out;
    always@(s)
    begin
    cases(s)
    4'b0000:    out=a+b;    //Add
    4'b0001:    out=a+~b+1;    //Sub
    4'b0010:    out=a;    //Move
    4'b0011:    out=a+~b;    //Sub with borrowed carry
    4'b0100:    out=a+1;     //Increment
    4'b0101:    out=a-1;     //Decrement
    4'b0110:    out=a+b+1;   //Add and Increment
    4'b0111:    out=a&b;     //Bitwise and
    4'b1000:    out=a|b;     //Bitwise or
    4'b1001:    out=a^b;     //Bitwise xor
    4'b1010:    out=~a;      //Compliment
    4'b1011:    out=a<<1;   //left shift   
    endcase
    end
endmodule
