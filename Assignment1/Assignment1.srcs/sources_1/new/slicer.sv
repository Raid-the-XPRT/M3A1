`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 08:04:43 AM
// Design Name: 
// Module Name: slicer
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


module slicer(
    input logic [7:0]instruction,
    output logic j,
    output logic c,
    output logic [1:0]d,
    output logic sreg,
    output logic [2:0]imm
    );
    

    
    always@ (*) begin
        j<=instruction[7];
        c<=instruction[6];
        d[1]<=instruction[5];
        d[0]<=instruction[4];
        sreg<=instruction[3];
        imm[2]<=instruction[2];
        imm[1]<=instruction[1];
        imm[0]<=instruction[0];
    end
endmodule
