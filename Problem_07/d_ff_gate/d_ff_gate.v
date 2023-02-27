module d_ff_gate(input d,input clock, input enable, output reg q);
  wire gclk;
 assign  gclk = enable & clock;
  always @(posedge gclk)
  begin
    q <=d;
  end
endmodule