module tristate_buffer_testbench;
  reg d;
  reg enable;
  wire y;
  tristate_buffer_behavioral uut(.d(d),.enable(enable),.y(y));
  initial
  begin
    enable=0;
    d=0;
    #10;
    enable=0;
    d=1;
    #10;
    enable=1;
    d=0;
    #10;
    enable=1;
    d=1;
    #10 $finish;
  end
endmodule
    
    
  
