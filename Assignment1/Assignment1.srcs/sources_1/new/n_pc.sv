`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 07:21:25 AM
// Design Name: 
// Module Name: n_pc
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


module n_pc #(parameter n=4)(
    input logic clk,
    input logic reset,
    input logic [n-1:0]load,
    input logic load_en,
    output logic [n-1:0]counter
    );
//    logic load_en=0;
    n_upCounterWithLoad #(.n(n)) counter1(.clk(clk),.reset(reset),.load(load),.counter(counter),.load_en(load_en));
        
endmodule
