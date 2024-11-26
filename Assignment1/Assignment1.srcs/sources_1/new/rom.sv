`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 02:10:03 AM
// Design Name: 
// Module Name: rom
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


module rom(
    //input logic clk,
    input logic [3:0]address,
    output logic [7:0]instruction
    );
    
    always@(*)begin
        case (address)
            4'b0000: instruction<=8'b00001000;
            4'b0001: instruction<=8'b00011001;
            4'b0010: instruction<=8'b00100000;
            4'b0011: instruction<=8'b00010000;
            4'b0100: instruction<=8'b01110000;
            4'b0101: instruction<=8'b00000000;
            4'b0110: instruction<=8'b00010100;
            4'b0111: instruction<=8'b00000100;
            4'b1000: instruction<=8'b10110010;
            4'b1001: instruction<=8'b11111111;
            4'b1010: instruction<=8'b11111111;
            4'b1011: instruction<=8'b11111111;
            4'b1100: instruction<=8'b11111111;
            4'b1101: instruction<=8'b11111111;
            4'b1110: instruction<=8'b11111111;
            4'b1111: instruction<=8'b11111111;
            
            endcase
    end
endmodule
