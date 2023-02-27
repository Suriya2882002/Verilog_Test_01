module d_ff_back( input d,input clock,input enable,output reg out,output reg q); 
   always @(*)
   begin
    case(enable)
      1'b0:out=q;
      1'b1:out=d;
    endcase
  end
    always @ (posedge clock)
     begin
       q<=out;
     end
  endmodule