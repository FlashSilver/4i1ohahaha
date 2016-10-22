`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2016 05:19:03 AM
// Design Name: 
// Module Name: mux81_ins
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


module mux81_ins(
    input logic a,
    input logic b,
    input logic c,
    input logic d,
    input logic e,
    input logic f,
    input logic g,
    input logic h,
    input logic s0,
    input logic s1,
    input logic s2,
    output logic out
    );
    
    logic temp1, temp2;
    logic [1:0] select;
    
    assign select = {s1,s0};
    
    mux4to1 l1(.A(a),.B(b),.C(c),.D(d),.sel(select),.out(temp1));
    mux4to1 l2(.A(e),.B(f),.C(g),.D(h),.sel(select),.out(temp2));
    mux21_str l3(.a(temp1),.b(temp2),.sel(s2),.out(out));

endmodule
