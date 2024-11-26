`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2024 11:01:08 AM
// Design Name: 
// Module Name: fourBit_adderSubstractor
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


module n_adderSubstractor #(parameter n=4)(
    input logic [n-1:0]a,
    input logic [n-1:0]b,
    input logic add_substract,
    output logic cout,
    output logic [n-1:0]res
    );
    
    logic [n:0]tempRes;
    always@(*) begin
        if(add_substract)
        tempRes=a-b;
        else 
        tempRes=a+b;
        
        if(tempRes[n])
        cout=1;
        else
        cout=0;
        
        res=tempRes;
        
    
    end
endmodule
