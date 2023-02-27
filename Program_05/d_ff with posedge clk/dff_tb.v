module dff_tb();
reg d;
reg clock;

wire Q;

dff dut(d,clock,Q);


initial begin
  clock=0;
     forever #10 clock = ~clock;  
end 
initial begin 
 d<= 0;
 #100;
 d <= 1;
 #100;
 d <= 0;
 #100;
 d <= 1;
end 
endmodule 