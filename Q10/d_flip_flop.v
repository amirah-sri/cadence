module d_flip_flop(
input clk,
input reset,
input d,
output reg q);
always @(posedge clk or posedge reset) begin
if (reset) begin
q<=0;
end else begin
q<=d;
end 
end 
endmodule
