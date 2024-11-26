`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 05:01:21 AM
// Design Name: 
// Module Name: rom_sim
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


module rom_sim;

logic [2:0]address=0000;
logic clk=0;
logic [7:0]instruction;

rom rm1(.clk(clk),.instruction(instruction),.address(address));


always #10 clk = ~clk;

initial begin
    #15
    $display("%0\t\t %b\t\t %b\t\t %b\t",$time,clk,address,instruction);
    address=001;
    #20
    $display("%0\t\t %b\t\t %b\t\t %b\t",$time,clk,address,instruction);
    address=010;
    #20
    $display("%0\t\t %b\t\t %b\t\t %b\t",$time,clk,address,instruction);
    address=011;
    #20
    $display("%0\t\t %b\t\t %b\t\t %b\t",$time,clk,address,instruction);
    address=100;
    #20
    $display("%0\t\t %b\t\t %b\t\t %b\t",$time,clk,address,instruction);
    address=101;
    #20
    $display("%0\t\t %b\t\t %b\t\t %b\t",$time,clk,address,instruction);
    address=110;
    #20
    $display("%0\t\t %b\t\t %b\t\t %b\t",$time,clk,address,instruction);
    address=111;
    #20
    $display("%0\t\t %b\t\t %b\t\t %b\t",$time,clk,address,instruction);
    #500;
    $finish;
end
endmodule
