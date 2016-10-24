`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2016 12:29:54 AM
// Design Name: 
// Module Name: mux21_str
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


module mux21_str(
    input logic a,
    input logic b,
    input logic sel,
    output logic out
    );
    logic temp1, temp2, temp3;
        not l1 (temp1, sel);
        and l2 (temp2, temp1, a);
        and l3 (temp3, sel, b);
        or l4(out, temp2, temp3); 
endmodule
