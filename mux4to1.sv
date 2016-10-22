`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2016 06:17:42 AM
// Design Name: 
// Module Name: mux4to1
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


module mux4to1(
    input A,
    input B,
    input C,
    input D,
    input [1:0] sel,
    output logic out
    );
    
    logic temp1, temp2;
    mux21_str l1(.a(A),.b(B),.sel(sel[0]),.out(temp1));
    mux21_str l2(.a(C),.b(D),.sel(sel[0]),.out(temp2));
    mux21_str l3(.a(temp1),.b(temp2),.sel(sel[1]),.out(out));


endmodule
