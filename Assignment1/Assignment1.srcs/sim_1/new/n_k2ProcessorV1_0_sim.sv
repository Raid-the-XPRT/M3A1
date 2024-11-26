`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 05:13:17 AM
// Design Name: 
// Module Name: n_k2ProcessorV1_0_sim
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
module n_k2ProcessorV1_0 #(parameter n=4)(
    input logic clk,
    input logic reset,
    output logic [n-1:0]ra,
    output logic [n-1:0]rb,
    output logic [n-1:0]ro,
    output logic [n-1:0]alu_res,
    output logic [n-1:0]pc,
    output logic carry,
    output logic j,
    output logic [1:0]d,
    output logic sreg,
    output logic s,
    output logic [2:0]imm
    );
*/

module n_k2ProcessorV1_0_sim;

    localparam n=4;
    logic clk=0;
    logic reset;
    logic [n-1:0]ra;
    logic [n-1:0]rb;
    logic [n-1:0]ro;
    logic [n-1:0]alu_res;
    logic [n-1:0]pc;
    logic carry;
    logic j;
    logic [1:0]d;
    logic sreg;
    logic s;
    logic [2:0]imm;
    logic [7:0]instruction;
    
    n_k2ProcessorV1_0 #(.n(n)) k2p1(.clk(clk),.reset(reset),.pc(pc),.imm(imm),.s(s),.carry(carry),.d(d),.sreg(sreg),.j(j),.alu_res(alu_res),.ra(ra),.rb(rb),.ro(ro),.instruction(instruction));
   
   always #10 clk = ~clk;
   
   `define disp $display("%0\t\t %b\t %b\t %b\t %b\t %b\t %b\t  %b\t\t %b\t",$time,clk,pc,instruction,j,carry,d,sreg,imm);
   `define sampTime #20;

   initial begin    
       #5
        reset=1;
        $display("TIME\t clk pc\t\t Instruction J\t C\t D\t Sreg\t IMM\t");
        `disp;
        reset=0;
        #20
        reset = 1;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `disp;
        `sampTime;
        `sampTime;

   $finish;
   end
endmodule
