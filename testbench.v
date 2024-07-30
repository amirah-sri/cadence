module testbench;
reg a,b,b_in;
wire b_out,diff;

fullsub ai(
.a(a),
.b(b),
.b_in(b_in),
.b_out(b_out),
.diff(diff));

initial begin 
a=0;b=0;b_in=0; #10;
a=0;b=0;b_in=1; #10;
a=0;b=1;b_in=0; #10;
a=0;b=1;b_in=1; #10;
a=1;b=0;b_in=0; #10;
a=1;b=0;b_in=1; #10;
a=1;b=1;b_in=0; #10;
a=1;b=1;b_in=1; #10;
$stop;
end
endmodule

