module dff_negedge_tb();
reg d;
reg clock;

wire Q;

dff_negedge dut(d,clock,Q);


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