`timescale 1ns / 1ps

module SeqDetector1101_tb();
reg clk;
reg rst;
reg in;
wire out;

SeqDetector1101 DUT(
.clk(clk),
.rst(rst),
.in(in),
.out(out));

initial
begin
    rst = 1'b1;
    clk = 1'b0;
    #15 rst = 1'b0;
end

always
begin
    #5 clk <= ~clk;
end

initial
begin
    #15 in = 0;
    #10 in = 0; #10 in = 1; #10 in = 1; #10 in = 0; #10 in = 1; #10 in = 0; 
    #10 in = 1; #10 in = 1; #10 in = 0; #10 in = 1; #10 in = 0;
end

endmodule
