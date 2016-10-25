`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2016 04:51:56 PM
// Design Name: 
// Module Name: op2_MUX
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


module B_MUX(
    input   logic   op2,
    input   logic   [2:0] opsel,
    output  logic   B
    );
    
    assign  B = (opsel == 3'b000) ? op2:
                (opsel == 3'b001) ? ~op2:
                (opsel == 3'b010) ? 0:
                (opsel == 3'b011) ? ~op2:
                (opsel == 3'b100) ? 0:
                (opsel == 3'b101) ? 1:
                (opsel == 3'b110) ? op2:
                1'bz;
                
endmodule
