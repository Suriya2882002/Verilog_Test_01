module d_ff_mux_tb;
  reg d,reset;
  reg clock=0;
  wire out,q;
d_ff_mux dut( .d(d),.clock(clock),.reset(reset),.out(out),.q(q)); 
   always #5 clock = ~clock;
   initial begin
     reset=0;
       d=1;
     #10 reset=1;
     #10 d=1;
     #5 reset=0;
     #5 d=0;
   end
endmodule