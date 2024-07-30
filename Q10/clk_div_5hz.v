module clk_div_5hz(
input clk_in,
input reset,
output reg clk_out);
reg [24:0] counter;
parameter hc=10000000;
always@(posedge clk_in or posedge reset) begin
if (reset) begin
counter<=0;
clk_out<=0;
end else begin
if (counter==hc-1) begin
counter<=0;
clk_out<=~clk_out;
end else begin 
counter<=counter+1;
end 
end 
end 
endmodule
