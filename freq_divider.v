module freq_divider(
  input clk, rst, 
  output clk_out);
  reg [2:0]q;
  reg w1;
  
  always@(posedge clk)
    q <= rst || q == 3'd6 ? 4'd0:q+1;
  
  always@(negedge clk) 
    w1 = rst ? 1'b0:q[2];
  
  assign clk_out = w1 | q[2];
  
endmodule
