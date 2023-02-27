module d_ff_mux( input d,input clock,input reset,output reg out,output reg q); 
   always @(*)
   begin
    case(reset)
      1'b0:out=0;
      1'b1:out=d;
    endcase
  end
    always @ (posedge clock)
     begin
       q<=out;
     end
  endmodule