`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2024 01:32:42 PM
// Design Name: 
// Module Name: jkFlipflop
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


module jkFlipflop(
    input logic J,
    input logic K,
    input logic clk,
    input logic rst,
    output logic Q
    );
    
//    always_comb begin
//        $monitor("value of Q is %0d in time %t", Q, $time);
//    end

    always_ff @(negedge clk, posedge rst) begin
        if (rst == 1'b1) begin
            Q <= 1'b0;
        end
        else begin
            case({J,K}) 
            2'b00: Q <= Q;      // no change
            2'b01: Q <= 1'b0;   // rst 
            2'b10: Q <= 1'b1;   // set
            2'b11: begin 
                Q <= ~Q;     // toggle
           end
            endcase
        end
    end
    
endmodule
