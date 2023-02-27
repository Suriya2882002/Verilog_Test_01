module mux_continous(input a, c, sel, output b);
  assign b = sel ? a : c;
endmodule