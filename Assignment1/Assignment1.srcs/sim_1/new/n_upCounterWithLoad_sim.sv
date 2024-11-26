`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 07:44:39 AM
// Design Name: 
// Module Name: n_upCounterWithLoad_sim
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


module n_upCounterWithLoad_sim;
    
    localparam n=4;
    logic clk=0;
    logic reset=1;
    logic load_en=0;
    logic [n-1:0]load;
    logic [n-1:0]counter;
    
    n_upCounterWithLoad #(.n(n)) ucntr1(.clk(clk),.reset(reset),.load_en(load_en),.load(load),.counter(counter));
    
    always #10 clk = ~clk;
    
    
initial begin
#5
    $display("TIME\t clk reset\t load_en load\t counter\t ");
    reset=1;
    load_en=0;
    load=4'b0000;
    #10    
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,clk,reset,load_en,load,counter);
    reset=0;
    load_en=0;
    load=4'b0000;
    #10    
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,clk,reset,load_en,load,counter);
    reset=1;
    load_en=0;
    load=4'b0000;
    #10    
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,clk,reset,load_en,load,counter);
    reset=1;
    load_en=0;
    load=4'b0000;
    #10    
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,clk,reset,load_en,load,counter);
    reset=1;
    load_en=0;
    load=4'b0000;
    #10    
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,clk,reset,load_en,load,counter);
    reset=1;
    load_en=0;
    load=4'b0000;
    #10    
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,clk,reset,load_en,load,counter);
    reset=1;
    load_en=1;
    load=4'b1100;
    #10    
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,clk,reset,load_en,load,counter);
    reset=1;
    load_en=0;
    load=4'b0000;
    #10    
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,clk,reset,load_en,load,counter);
    reset=1;
    load_en=0;
    load=4'b0000;
    #10    
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,clk,reset,load_en,load,counter);
    reset=1;
    load_en=0;
    load=4'b0000;
    #10    
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,clk,reset,load_en,load,counter);
    reset=1;
    load_en=0;
    load=4'b0000;
    #10    
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,clk,reset,load_en,load,counter);
    reset=1;
    load_en=0;
    load=4'b0000;
    #10    
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,clk,reset,load_en,load,counter);
    #10
    #10
    #10
    $finish;
 end    
endmodule