`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 12:55:52 AM
// Design Name: 
// Module Name: and_or_sim
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


module and_or_sim;


logic a;
logic b;
logic f_and;
logic f_or;
and_gate and1(f_and,a,b);
or_gate or1(f_or,a,b);



initial begin 
#5
$display("TIME\t a\t b\t f_and\t f_or");
    a=0;
    b=0;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b",$time,a,b,f_and,f_or);
    a=0;
    b=1;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b",$time,a,b,f_and,f_or);
    a=1;
    b=0;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b",$time,a,b,f_and,f_or);
    a=1;
    b=1;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b",$time,a,b,f_and,f_or);
    a=0;
    b=0;
    #10
    $display("%0\t\t %b\t %b\t %b\t %b",$time,a,b,f_and,f_or);
    


end
endmodule
