`timescale 1ns / 1ps


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
    output logic [2:0]imm,
    output logic [7:0]instruction
    );
    
    logic carryIn;
    logic carryOut;
    logic c;
    logic add_substract;
    logic [n-1:0]muxRes;
    logic ra_en;
    logic rb_en;
    logic ro_en;
    logic dividedClock;
    logic load_en;
    assign load_en =j|(c&carryOut);
    
    logic [3:0] jump_pc;
    assign jump_pc = {1'b0, imm};
    
    assign s= imm[2];
    
    
    n_clockDivider #(.n(n)) cd1(.clk(clk),.reset(reset),.newClk(dividedClock));
    dFlipFlop dff1(.clk(clk),.reset(reset),.d(carryIn),.q(carryOut));
    n_pc #(.n(n)) pc1(.clk(clk),.counter(pc),.reset(reset),.load_en(load_en),.load(jump_pc));
    rom rm1(.address(pc),.instruction(instruction));
    slicer sl1(.instruction(instruction),.j(j),.c(c),.d(d),.sreg(sreg),.imm(imm));
    n_adderSubstractor #(.n(n)) alu1(.a(ra),.b(rb),.cout(carryIn),.add_substract(s),.res(alu_res));
    n_register #(.n(n)) raReg(.clk(clk),.reset(reset),.d(muxRes),.en(ra_en),.out(ra));
    n_register #(.n(n)) rbReg(.clk(clk),.reset(reset),.d(muxRes),.en(rb_en),.out(rb));
    n_register #(.n(n)) roReg(.clk(clk),.reset(reset),.d(ra),.en(ro_en),.out(ro));
    n_2x1mux #(.n(n)) mux1(.a(alu_res),.b({1'b0,imm}),.s(sreg),.res(muxRes));
    decoder2x4 dec1(.d(d),.res0(ra_en),.res1(rb_en),.res2(ro_en));
    
    endmodule