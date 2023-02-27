module mux_testbench;
reg a,c,sel;
wire b;
mux_continous mux_test(a,c,sel,b);      
initial
begin
sel=0;a=0;c=0;
#100 sel=0;a=0;c=1;
#100 sel=0;a=1;c=0;
#100 sel=0;a=1;c=1;
#100 sel=1;a=0;c=0;
#100 sel=1;a=0;c=1;
#100 sel=1;a=1;c=0;
#100 sel=1;a=1;c=1;
end
endmodule