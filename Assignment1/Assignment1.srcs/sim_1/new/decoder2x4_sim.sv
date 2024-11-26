`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2024 09:20:54 PM
// Design Name: 
// Module Name: decoder2x4_sim
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


module decoder2x4_sim;


logic res0;
logic res1;
logic res2;
logic res3;
logic [1:0]d;

decoder2x4 dec1(.res0(res0),.res1(res1),.res2(res2),.res3(res3),.d(d));

initial begin


$display("TIME\t d\t res0\t res1\t res2\t res3");
#5
$display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,d,res0,res1,res2,res3);
d=2'b00; 
#10
$display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,d,res0,res1,res2,res3);
d=2'b01;
#10
$display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,d,res0,res1,res2,res3);
d=2'b10;
#10
$display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,d,res0,res1,res2,res3);
d=2'b11;
#10
$display("%0\t\t %b\t %b\t %b\t %b\t %b",$time,d,res0,res1,res2,res3);
#10;
end
endmodule
