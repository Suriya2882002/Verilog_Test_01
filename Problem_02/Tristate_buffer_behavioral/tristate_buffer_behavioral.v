module tristate_buffer_behavioral(input d,input enable,output reg y);
initial begin
	if(enable)begin
		 y=d;
	end
	else begin
		 y=1'bz;
	end
end
endmodule
