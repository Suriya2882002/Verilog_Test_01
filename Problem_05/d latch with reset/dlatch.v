module dlatch(input d, input enable,input reset,output reg q);
always@(enable or reset)
begin
if(!reset) begin
q=0;
end
else
begin
q<=d;
end
end
endmodule