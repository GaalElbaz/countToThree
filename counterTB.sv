`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2024 01:57:16 PM
// Design Name: 
// Module Name: counterTB
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


module counterTB();

logic clk, rst, outA, outB;
twoBitCounterNClockdivider counterTB(.clk(clk), .rst(rst), .outA(outA), .outB(outB));

always #40 clk = ~clk;

initial begin
    clk = 1'b0;
    rst = 1'b1;
    #10
    rst = 1'b0;
    #1000
    $finish;
end

endmodule
