module and_behavioral(input a,input b,output reg c);
  always@(a,b)
  begin
    if(a && b)
      begin 
        c=1;
      end
    else
      begin
        c=0;
      end
  end
endmodule
