module top_module(
input clk_in,
input reset,
input d,
output q);
wire clk_5hz;
clk_div_5hz c1(.clk_in(clk_in), .reset(reset), .clk_out(clk_5hz));
d_flip_flop a2(.clk(clk_5hz), .reset(reset), .d(d), .q(q));
endmodule
