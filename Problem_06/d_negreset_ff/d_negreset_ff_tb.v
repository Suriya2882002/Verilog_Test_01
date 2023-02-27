module d_negreset_ff_tb;
  reg reset;
  reg d;
  reg clock= 0;
  d_negreset_ff dut(.reset(reset), .d(d), .clock(clock), .q(q));
   always #5 clock=~clock;
  initial begin
    reset=0;
    d=0;
    #5 reset=1;
    d=0;
    #5 d=1;
    reset=0;
    #5 d=1;
    #5 reset =1;
  end
endmodule
  