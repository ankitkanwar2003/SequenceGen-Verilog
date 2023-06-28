// Code your testbench here
// or browse Examples
`timescale 1ns/1ps
module project_tb;
  reg clk, x;
  wire y, z;
  proj uut (
    .clk(clk),
    .x(x),
    .y(y),
    .lck(z)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
    clk = 0;
  end
  always #1 clk = ~clk;
  initial begin
    x = 1;
    #8
    x = 0;
    #8
    x = 1;
    #4;
    x = 0;
    #6;
    #8
    $finish;
  end
endmodule