`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 02:44:01 AM
// Design Name: 
// Module Name: n_clockDivider
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


module n_clockDivider #(parameter n=4)(
    input logic clk,
    input logic reset,
    output logic newClk
    );
    
    logic [3:0]count;
    logic resetSignal;
    logic up_down=1;
    logic ff_en;
    logic r;
    assign r = resetSignal & reset;
    logic qb;
    
    dFlipFlop dff1(.clk(clk),.reset(reset),.d(qb),.q(newClk),.en(ff_en), .qb(qb));
    nBits_comparator #(.n(n)) comp1(.count(count),.signal(ff_en),.resetSignal(resetSignal), .reset(reset), .clk(clk));        
    nBits_up_down_counter #(.n(n)) nbc1(.clk(clk),.reset(r),.up_down(up_down),.count(count));    
    
endmodule
