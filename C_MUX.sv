`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2016 05:03:57 PM
// Design Name: 
// Module Name: cin_MUX
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


module C_MUX(
    input   logic c_in,
    input   logic [2:0] opsel,
    output  logic C
    );
    
    assign  C   =   (opsel == 3'b000) ? c_in:
                    (opsel == 3'b001) ? c_in:
                    (opsel == 3'b010) ? 0:
                    (opsel == 3'b011) ? c_in:
                    (opsel == 3'b100) ? 0:
                    (opsel == 3'b101) ? 1:
                    (opsel == 3'b110) ? c_in:
                    1'bz;
    
endmodule
