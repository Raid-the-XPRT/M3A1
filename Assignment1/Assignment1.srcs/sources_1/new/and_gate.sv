`timescale 1ns / 1ps


module and_gate(
    output logic f,
    input logic a,
    input logic b
    );
    
    assign f=a&b;
endmodule 