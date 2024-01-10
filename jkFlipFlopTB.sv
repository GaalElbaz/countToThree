`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2024 01:37:16 PM
// Design Name: 
// Module Name: jkFlipFlopTB
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


module jkFlipFlopTB();

    logic J,K,clk,rst,Q;
    
    jkFlipflop jkFlipFlopInstance(.J(J),.K(K), .clk(clk), .rst(rst), .Q(Q));
    
    always begin
        #20 clk = ~clk;
    end
    initial begin
        clk = 1'b0;
        rst = 1'b1;
        J = 1'b0;
        K = 1'b0;       
        #10
        rst = 1'b0;
        #40
        J = 1'b1;
        #40
        J = 1'b0;
        K = 1'b1;
        #70
        J = 1'b1;
        #100
        $finish;                                        
    end
endmodule
