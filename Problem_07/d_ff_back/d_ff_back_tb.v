module d_ff_back_tb;
  reg d,enable;
  reg clock=0;
  wire out,q;
d_ff_back dut( .d(d),.clock(clock),.enable(enable),.out(out),.q(q)); 
   always #5 clock = ~clock;
   initial begin
    enable=0;
       d=1;
     #10 enable=1;
     #10 d=1;
     #10 d=0;
     #10enable =0;
     #10 d=0;
     
     
   end
 endmodule