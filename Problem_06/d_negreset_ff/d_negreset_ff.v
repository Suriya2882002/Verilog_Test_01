module  d_negreset_ff ( input d, input clock,input reset, output reg q);
  always @(posedge clock)
  begin
    if(!reset) 
      
q=1'b0;
  
else
    
  q=d;
 
 end

endmodule