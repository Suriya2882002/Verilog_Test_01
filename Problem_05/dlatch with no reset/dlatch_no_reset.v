module dlatch_no_reset(input d, input enable,output reg q);
always@(*)
if(!enable) begin
q=0;
end
else
begin
q<=d;
end
endmodule