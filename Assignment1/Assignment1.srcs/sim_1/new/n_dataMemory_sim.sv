`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 02:53:09 AM
// Design Name: 
// Module Name: n_dataMemory_sim
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
/*
module n_dataMemory #(parameter n=4)(
    input logic [2:0]address,
    input logic [n-1:0]d,
    input logic wr, //0= write, 1=read
    input logic clear,
    output logic [n-1:0]out
    );
    */

module n_dataMemory_sim;

localparam n=8;
logic [2:0]address;
logic [n-1:0]out;
logic [n-1:0]dataIn;
logic wr=1;
logic clear=1;
logic clk=0;


n_dataMemory #(.n(n)) dm1(.wr(wr),.clear(clear),.address(address),.out(out),.d(dataIn),.clk(clk));


always #5 clk= ~clk;

initial begin 
   $display("TIME\t wr clear address dataIn\t output");
    clear=0;
    address=3'b000;
    dataIn=8'b00000001;
    wr=1;
    #5
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b000;
    dataIn=8'b00001111;
    wr=0;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b001;
    dataIn=8'b11110000;
    wr=0;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b000;
    dataIn=8'b101010101;
    wr=1;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b001;
    dataIn=8'b00001111;
    wr=1;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=0;
    address=3'b000;
    dataIn=8'b00001111;
    wr=0;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b000;
    dataIn=8'b00001111;
    wr=1;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b000;
    dataIn=8'b10000000;
    wr=0;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b001;
    dataIn=8'b01000000;
    wr=0;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b010;
    dataIn=8'b00100000;
    wr=0;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b011;
    dataIn=8'b00010000;
    wr=0;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b100;
    dataIn=8'b00001000;
    wr=0;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b101;
    dataIn=8'b00000100;
    wr=0;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b110;
    dataIn=8'b00000010;
    wr=0;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b111;
    dataIn=8'b00000001;
    wr=0;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b000;
    dataIn=8'b10000000;
    wr=1;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b001;
    dataIn=8'b01000000;
    wr=1;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b010;
    dataIn=8'b00100000;
    wr=1;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b011;
    dataIn=8'b00010000;
    wr=1;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b100;
    dataIn=8'b00001000;
    wr=1;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b101;
    dataIn=8'b00000100;
    wr=1;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b110;
    dataIn=8'b00000010;
    wr=1;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    clear=1;
    address=3'b111;
    dataIn=8'b00000001;
    wr=1;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,wr,clear,address,dataIn,out);
    $finish;
 end    
   
endmodule
