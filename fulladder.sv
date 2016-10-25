`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2016 08:29:28 PM
// Design Name: 
// Module Name: Fulladder_1
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


module FA_1B(
    input   logic A,
    input   logic B,
    input   logic C,
    output  logic result,
    output  logic c_out
    );
    
    assign result   = A^B^C;
    assign c_out    = (A&B)|(C&(A^B));
    
endmodule
