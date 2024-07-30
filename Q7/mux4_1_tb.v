module mux4_1_tb;
reg [3:0] a;
reg [3:0] b;
reg [3:0] c;
reg [3:0] d;
wire [3:0] out;
reg [1:0] sel;
mux4_1 a1(.a(a),.b(b),.c(c),.d(d),.sel(sel),.out(out));
initial begin
sel<=2'b00;
a<=4'b0000;
b<=4'b0001;
c<=4'b0010;
d<=4'b0011;

begin
#5 sel<=2'b00;
#5 sel<=2'b01;
#5 sel<=2'b10;
#5 sel<=2'b11;
end
#5 $finish;
end 
endmodule
