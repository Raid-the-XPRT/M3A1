`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2024 10:58:55 PM
// Design Name: 
// Module Name: dFlipFlop_sim
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


module dFlipFlop_sim;

    logic clk=0;
    logic d=0;
    logic reset;
    logic q;
    logic qb;
    
    dFlipFlop dff1(.clk(clk),.reset(reset),.q(q),.qb(qb),.d(d));
    
    always #10 clk = ~clk;
    
    initial begin
    $display("TIME\t D reset clk q   qb");
    d=0;
    reset=0;
    #5
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,d,reset,clk,q,qb);
        d=0;
    reset=1;
        #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,d,reset,clk,q,qb);
        d=0;
    reset=1;
        #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,d,reset,clk,q,qb);
        d=1;
    reset=1;
        #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,d,reset,clk,q,qb);
        d=1;
    reset=1;
        #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,d,reset,clk,q,qb);
        d=0;
    reset=0;
        #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,d,reset,clk,q,qb);
        d=0;
    reset=0;
        #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,d,reset,clk,q,qb);
        d=1;
    reset=1;
        #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,d,reset,clk,q,qb);
        d=1;
    reset=1;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,d,reset,clk,q,qb);
        d=0;
    reset=1;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,d,reset,clk,q,qb);
    
    $finish;
 end    
    
        
endmodule
