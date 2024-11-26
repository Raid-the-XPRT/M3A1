`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2024 10:31:09 PM
// Design Name: 
// Module Name: n_register_sim
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


module n_register_sim;
    localparam n=4;
    logic [n-1:0]d=4'b0000;
    logic [n-1:0]out;
    logic reset;
    logic clk = 0;
    logic en;
    
   n_register #(.n(n)) nreg1(.d(d),.clk(clk),.reset(reset),.out(out),.en(en));

    
always #10 clk=~clk;
    
initial begin
#5
    $display("TIME\t D\t\t reset\t clk\t en\t\t out\t ");
//    clk = 0;
    d=4'b0000;
    reset=1;
    en=1;    
    #10
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,d,reset,clk,en,out);
    d=4'b1100;
    reset=0;
    en=1;    
    #10
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,d,reset,clk,en,out);
    d=4'b1111;
    reset=1;
    en=0;    
    #10
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,d,reset,clk,en,out);
    d=4'b1010;
    reset=1;
    en=0;    
    #10
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,d,reset,clk,en,out);
    d=4'b0011;
    reset=1;
    en=1;    
    #10
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,d,reset,clk,en,out);
    d=4'b0110;
    reset=1;
    en=1;    
    #10
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,d,reset,clk,en,out);
    d=4'b1110;
    reset=1;
    en=1;    
    #10
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,d,reset,clk,en,out);
    d=4'b1111;
    reset=1;
    en=1;    
    #10
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,d,reset,clk,en,out);
    d=4'b0001;
    reset=1;
    en=1;    
    #10
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,d,reset,clk,en,out);
    d=4'b0001;
    reset=1;
    en=0;    
    #10
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,d,reset,clk,en,out);
    d=4'b0001;
    reset=1;
    en=1;    
    #10
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,d,reset,clk,en,out);
    d=4'b0001;
    reset=0;
    en=0;    
    #10
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,d,reset,clk,en,out);
    d=4'b0111;
    reset=1;
    en=1;    
    #10
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,d,reset,clk,en,out);
    d=4'b0001;
    reset=1;
    en=0;    
    #10
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,d,reset,clk,en,out);
    d=4'b0001;
    reset=1;
    en=0;    
    #10
    $display("%0\t\t %b\t %b\t\t %b\t\t %b\t \t%b",$time,d,reset,clk,en,out);    
    
    $finish;
 end    
endmodule