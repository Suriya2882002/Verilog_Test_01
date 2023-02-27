module and_continous_assignment_tb;
reg a;
reg b;
wire c;
and_continous_assignment uut (.a(a),.b(b),.c(c));
initial 
begin
	a=0;b=0;
	#10;
	a=0;b=1;
	#10
	a=1;b=0;
	#10;
	a=1;b=1;
	#10 $finish;
end
	
endmodule
