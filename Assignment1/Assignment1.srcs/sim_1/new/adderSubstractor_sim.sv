`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2024 11:21:20 AM
// Design Name: 
// Module Name: adderSubstractor_sim
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


module adderSubstractor_sim;

localparam n=4;
logic m;
//logic cin;
logic [n-1:0]a;
logic [n-1:0]b;
logic cout;
logic [n-1:0]res;


n_adderSubstractor #(.n(n)) as1(.m(m),.a(a),.b(b),.cout(cout),.res(res));




initial begin

#50

 
$display("TIME\t a\t\t b\t\t cin\t cout\t res");
$display("%0\t\t %b\t %b\t %b\t\t %b\t\t %b",$time,a,b,cin,cout,res);

a=4'b0000;
b=4'b0001;
m=0;
cin=0;
#10
$display("%0\t\t %b\t %b\t %b\t\t %b\t\t %b",$time,a,b,cin,cout,res);
a=4'b1111;
b=4'b0001;
m=0;
cin=0;
#10
$display("%0\t\t %b\t %b\t %b\t\t %b\t\t %b",$time,a,b,cin,cout,res);
a=4'b1100;
b=4'b0001;
m=0;
cin=0;
#10
$display("%0\t\t %b\t %b\t %b\t\t %b\t\t %b",$time,a,b,cin,cout,res);
a=4'b1000;
b=4'b0001;
m=0;
cin=0;
#10
$display("%0\t\t %b\t %b\t %b\t\t %b\t\t %b",$time,a,b,cin,cout,res);
a=4'b1111;
b=4'b0000;
m=0;
cin=0;
#10
$display("%0\t\t %b\t %b\t %b\t\t %b\t\t %b",$time,a,b,cin,cout,res);
a=4'b1010;
b=4'b0101;
m=0;
cin=0;
#10
$display("%0\t\t %b\t %b\t %b\t\t %b\t\t %b",$time,a,b,cin,cout,res);
a=4'b1111;
b=4'b1111;
m=0;
cin=0;
#10
$display("%0\t\t %b\t %b\t %b\t\t %b\t\t %b",$time,a,b,cin,cout,res);
a=4'b1111;
b=4'b1111;
m=0;
cin=1;
#10
$display("%0\t\t %b\t %b\t %b\t\t %b\t\t %b",$time,a,b,cin,cout,res);



















end
endmodule
