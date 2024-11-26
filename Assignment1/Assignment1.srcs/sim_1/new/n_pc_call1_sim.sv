`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 07:10:51 AM
// Design Name: 
// Module Name: n_pc_call1_sim
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
module n_pc #(parameter n=4)(
    input logic clk,
    input logic reset,
    input logic [n-1:0]load,
    input logic load_en,
    output logic [n-1:0]counter
    );
//    logic load_en=0;
    n_upCounterWithLoad #(.n(n)) counter1(.clk(clk),.reset(reset),.load(load),.counter(counter),.load_en(load_en));
        
endmodule

*/

module n_pc_call1_sim;
    
    localparam n=3;
    logic clk=0;
    logic reset;
   // logic [n-1:0]load;
   // logic load_en;
    logic [n-1:0]pc;
    
    n_pc_caller2 #(.n(n)) call1(.clk(clk),.reset(reset),.counter(pc));
    
    
    always #10 clk=~clk;
    
    
      initial begin    
        #5
        reset=1;
        $display("TIME\t pc\t");
        $display("%0\t %b",$time,pc);
        reset=0;
        #10
        $display("%0\t %b",$time,pc);
        reset=1;
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        $display("%0\t %b",$time,pc);
        #10
        #10
        
        
        

   $finish;
   end
endmodule
