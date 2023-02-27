module dlatch_tb;
reg d;
reg enable;
reg reset;
wire q;
dlatch dut(.d(d),.enable(enable),.reset(reset),.q(q));
initial
begin
$dumpfile("dlatch.vcd");
$dumpvars();
end

initial
begin
reset=0;
enable = 0;
d=0;
#10;
enable=1;
reset =1; 
d=1;
#10;
reset = 0;
#10;
d=0;
#10;
d=1;
end
endmodule
