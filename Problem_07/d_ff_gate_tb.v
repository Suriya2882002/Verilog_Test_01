module d_ff_gate_tb;
  reg d,enable;
  reg clock=0;
  wire q;
d_ff_gate dut(.d(d),.clock(clk),.enable(enable),.q(q));
always #5 clock =~clock;
initial begin
  d=1;
  enable=1;
  #10 d=0;
  #10 enable=0;
  #10 d=1;
  #10 enable=0;
  #10 d=0;
  #10 enable =1;
  #10 d=1;
end
endmodule
