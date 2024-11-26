`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 07:26:46 AM
// Design Name: 
// Module Name: n_pc_caller2
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


module n_pc_caller2 #(parameter n=4)(
    input logic clk,
    input logic reset,
    input logic [n-1:0]load,
    input logic load_en,
    output logic [n-1:0]counter
    );
    
    n_pc_caller1 #(.n(n)) call2(.*);
endmodule
