module clk_div_tb;
reg clk_in;
reg reset;
wire clk_out;
clk_div a1(.clk_in(clk_in),.clk_out(clk_out),.reset(reset));
always begin
#5 clk_in=~clk_in;
end
initial begin 
clk_in=0;
reset=1;
#100 reset=0;
#1000000000;
$finish;
end
endmodule


















