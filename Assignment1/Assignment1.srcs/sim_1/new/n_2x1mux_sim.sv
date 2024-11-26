`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2024 08:43:50 PM
// Design Name: 
// Module Name: n_2x1mux_sim
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


module n_2x1mux_sim;


localparam n=4;
logic [n-1:0]out;
logic [n-1:0]literal;
logic [n-1:0]alu_res;
logic sreg;

n_2x1mux #(.n(n)) mx1(.a(alu_res),.b(literal),.res(out),.s(sreg));


initial begin 
$display("TIME\t literal alu\t s\t res\t");

literal=4'b0000;
alu_res=4'b1111;
sreg=0;
#10
$display("%0\t\t %b\t %b\t %b\t %b\t",$time,literal,alu_res,sreg,out);
literal=4'b0000;
alu_res=4'b1111;
sreg=1;
#10
$display("%0\t\t %b\t %b\t %b\t %b\t",$time,literal,alu_res,sreg,out);
literal=4'b0011;
alu_res=4'b1111;
sreg=0;
#10
$display("%0\t\t %b\t %b\t %b\t %b\t",$time,literal,alu_res,sreg,out);
literal=4'b0011;
alu_res=4'b1111;
sreg=1;
#10
$display("%0\t\t %b\t %b\t %b\t %b\t",$time,literal,alu_res,sreg,out);
literal=4'b1010;
alu_res=4'b0000;
sreg=0;
#10
$display("%0\t\t %b\t %b\t %b\t %b\t",$time,literal,alu_res,sreg,out);
literal=4'b1010;
alu_res=4'b0000;
sreg=1;
#10
$display("%0\t\t %b\t %b\t %b\t %b\t",$time,literal,alu_res,sreg,out);
literal=4'b1101;
alu_res=4'b1001;
sreg=0;
#10
$display("%0\t\t %b\t %b\t %b\t %b\t",$time,literal,alu_res,sreg,out);
literal=4'b1101;
alu_res=4'b1001;
sreg=1;
#10
$display("%0\t\t %b\t %b\t %b\t %b\t",$time,literal,alu_res,sreg,out);
literal=4'b0000;
alu_res=4'b1000;
sreg=0;
#10
$display("%0\t\t %b\t %b\t %b\t %b\t",$time,literal,alu_res,sreg,out);
literal=4'b0000;
alu_res=4'b1000;
sreg=1;
#10
$display("%0\t\t %b\t %b\t %b\t %b\t",$time,literal,alu_res,sreg,out);
#10
#10;

end
endmodule
