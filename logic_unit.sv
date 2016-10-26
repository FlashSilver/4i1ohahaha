    `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2016 09:34:15 AM
// Design Name: 
// Module Name: logic
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


module LogU(
    input logic a,
    input logic b,
    input logic opsel0,
    input logic opsel1,
    input logic opsel2,
    input logic cin,
    output logic out
    );
    
    logic temp1, temp2, temp3, temp4;
    
    and l1 (temp1, a, b);
    or l2 (temp2, a, b);
    xor l3 (temp3, a, b);
    not l4 (temp4, a);
    
    mux81_ins a1 (
               .a(temp1),
               .b(temp2),
               .c(temp3),
               .d(temp4),
                .e(cin),
               .f(1'bz),
               .g(1'bz),
               .h(1'bz),
               .s0(opsel0),
               .s1(opsel1),
               .s2(opsel2),
               .out(out)
               );
                
    logic [2:0] opsel;
    assign opsel = {opsel0, opsel1, opsel2}
    assign cout = ( opsel == 3'b101? a: 1'b0)
        
endmodule
