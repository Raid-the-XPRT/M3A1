`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2024 09:42:55 PM
// Design Name: 
// Module Name: n_register
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


module n_register #(parameter n=4)(
    input logic clk,
    input logic reset,
    input logic en,
    input logic [n-1:0]d,
    output logic [n-1:0]out
    );
    
    always@( posedge clk, negedge reset)begin
        if(!reset)
            out<=0;
        else if (en)
            out<=d;
    end
endmodule
