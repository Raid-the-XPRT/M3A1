`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 08:18:34 AM
// Design Name: 
// Module Name: slicer_sim
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


module slicer_sim;

    logic [7:0]instruction;
    logic j;
    logic c;
    logic [1:0]d;
    logic sreg;
    logic [2:0]imm;
    logic clk=0;
    
    slicer sl1(.*);
    
    
    
    always #10 clk=~clk;
    
    initial begin 
            #5
        
        $display("TIME\t pc\t");
        $display("%0\t\t %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",$time,clk,j,c,d[1],d[0],sreg,imm[2],imm[1],imm[0],instruction);
        instruction=8'b00000000;
        #20
        $display("%0\t %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",$time,clk,j,c,d[1],d[0],sreg,imm[2],imm[1],imm[0],instruction);
        instruction=8'b00000001;
        #20
        $display("%0\t %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",$time,clk,j,c,d[1],d[0],sreg,imm[2],imm[1],imm[0],instruction);
        instruction=8'b00000010;
        #20
        $display("%0\t %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",$time,clk,j,c,d[1],d[0],sreg,imm[2],imm[1],imm[0],instruction);
        instruction=8'b00000100;
        #20
        $display("%0\t %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",$time,clk,j,c,d[1],d[0],sreg,imm[2],imm[1],imm[0],instruction);
        instruction=8'b00001000;
        #20
        $display("%0\t %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",$time,clk,j,c,d[1],d[0],sreg,imm[2],imm[1],imm[0],instruction);
        instruction=8'b00010000;
        #20
        $display("%0\t %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",$time,clk,j,c,d[1],d[0],sreg,imm[2],imm[1],imm[0],instruction);
        instruction=8'b00100000;
        #20
        $display("%0\t %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",$time,clk,j,c,d[1],d[0],sreg,imm[2],imm[1],imm[0],instruction);
        instruction=8'b01000000;
        #20
        $display("%0\t %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",$time,clk,j,c,d[1],d[0],sreg,imm[2],imm[1],imm[0],instruction);
        instruction=8'b10000000;
        #20
        $display("%0\t %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",$time,clk,j,c,d[1],d[0],sreg,imm[2],imm[1],imm[0],instruction);
        instruction=8'b00001111;
        #20
        $display("%0\t %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",$time,clk,j,c,d[1],d[0],sreg,imm[2],imm[1],imm[0],instruction);
        instruction=8'b11110000;
        #20
        $display("%0\t %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",$time,clk,j,c,d[1],d[0],sreg,imm[2],imm[1],imm[0],instruction);
        instruction=8'b10101010;
        #20
        $display("%0\t %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",$time,clk,j,c,d[1],d[0],sreg,imm[2],imm[1],imm[0],instruction);
        instruction=8'b01010101;
        #20
        
        

   $finish;

    
   end 
endmodule
