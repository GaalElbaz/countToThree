`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2024 01:32:42 PM
// Design Name: 
// Module Name: twoBitCounterNClockdivider
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


module twoBitCounterNClockdivider(
    input clk,
    input rst,
    output outA,
    output outB
    );
    
    jkFlipflop jkA (.J(1'b1), .K(1'b1), .clk(clk), .rst(rst), .Q(outA));
    jkFlipflop jkB (.J(1'b1), .K(1'b1), .clk(outA), .rst(rst), .Q(outB));
endmodule
