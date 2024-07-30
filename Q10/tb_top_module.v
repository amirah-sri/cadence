module top_module_tb;
reg clk_in;
reg reset;
reg d;
wire q;
top_module a1(.clk_in(clk_in),.reset(reset),.d(d),.q(q));
always begin 
#5 clk_in=~clk_in;
end
initial begin
clk_in=0;
reset=1;
d=0;
#100 reset=0;
#20000000 d=1;
#20000000 d=0;
#20000000 d=1;
#20000000 d=0;
#20000000 d=1;
#20000000 d=1;
#100000000; $finish;
end
endmodule
