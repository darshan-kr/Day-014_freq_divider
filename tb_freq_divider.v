module tb;
  reg clk, rst;
  wire clk_out;
  
  freq_divider f1(clk, rst, clk_out);
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    clk = 1'b0;
    rst = 1'b1;
    #10;
    rst = 1'b0;
    #1000 $finish;
  end
  
  always #5 clk = ~clk;
  
endmodule
