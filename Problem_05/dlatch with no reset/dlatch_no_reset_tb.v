module dlatch_no_reset_tb;
reg d;
reg enable;
wire q;

dlatch_no_reset dut(.d(d),.enable(enable),.q(q));
initial 
begin
$dumpfile("dltach.vcd");
$dumpvars;
end
initial
begin
enable = 0;
d=0;
#10;
enable=1;
d=1;
#10;
d=0;
#10;
d=1;
end
endmodule
