`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2024 09:15:02 PM
// Design Name: 
// Module Name: decoder2x4
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


module decoder2x4(
    input logic [1:0]d,
    output logic res0,
    output logic res1,
    output logic res2,
    output logic res3
    );

    always@(*) begin
        case (d)
            2'b00: begin res0=1; res1=0; res2=0; res3=0;    end
            2'b01: begin res0=0; res1=1; res2=0; res3=0;    end
            2'b10: begin res0=0; res1=0; res2=1; res3=0;    end
            2'b11: begin res0=0; res1=0; res2=0; res3=1;    end
        endcase
    end    
endmodule
