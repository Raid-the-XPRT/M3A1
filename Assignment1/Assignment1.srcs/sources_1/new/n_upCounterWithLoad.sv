`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 07:26:14 AM
// Design Name: 
// Module Name: n_upCounterWithLoad
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


module n_upCounterWithLoad #(parameter n=4)(
    input logic clk,
    input logic reset,
    input logic [n-1:0]load,
    input logic load_en,
    output logic [n-1:0]counter
    );
    
    
    always@(posedge clk or negedge reset)begin
        if(!reset)
            counter<=0;
        else if(load_en)
            counter<=load;
        else 
            counter <= counter + 1;
    end
endmodule
