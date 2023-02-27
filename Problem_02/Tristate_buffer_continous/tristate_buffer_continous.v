module tristate_buffer_continous(input d,input enable,output y);
  assign y = enable? d:1'bz;
endmodule
