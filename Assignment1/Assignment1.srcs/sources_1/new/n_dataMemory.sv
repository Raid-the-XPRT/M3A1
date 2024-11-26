`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 02:38:15 AM
// Design Name: 
// Module Name: n_dataMemory
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


module n_dataMemory #(parameter n=4)(
    input logic clk,
    input logic [2:0]address,
    input logic [n-1:0]d,
    input logic wr, //0= write, 1=read
    input logic clear,
    output logic [n-1:0]out
    );
    
    logic [n-1:0]data[0:7];
    
    
    
    always@ (posedge clk,negedge clear) begin
        if(!clear) begin
            data[0]<=0;
            data[1]<=0;
            data[2]<=0;
            data[3]<=0;
            data[4]<=0;
            data[5]<=0;
            data[6]<=0;
            data[7]<=0;
            out<=8'b00000000;
        end
        else if (wr==1)
            out<=data[address];
        else if (wr==0)
            data[address]<=d;
//        else 
//            data[address] <= data[address];    
        
    end
endmodule
