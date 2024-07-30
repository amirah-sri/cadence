module xnor_gate_tb;
reg a;
reg b;
reg c;
reg d;
wire y;
xnorgate g1( 
.a(a),
.b(b),
.c(c),
.d(d),
.y(y));

initial 
begin
a=0;b=0;c=0;d=0; #10;
a=0;b=0;c=0;d=1; #10;
a=0;b=0;c=1;d=0; #10;
a=0;b=0;c=1;d=1; #10;
a=0;b=1;c=0;d=0; #10;
a=0;b=1;c=0;d=1; #10;
a=0;b=1;c=1;d=0; #10;
a=0;b=1;c=1;d=1; #10;
a=1;b=0;c=0;d=0; #10;
a=1;b=0;c=0;d=1; #10;
a=1;b=0;c=1;d=0; #10;
a=1;b=0;c=1;d=1; #10;
a=1;b=1;c=0;d=0; #10;
a=1;b=1;c=0;d=1; #10;
a=1;b=1;c=1;d=0; #10;
a=1;b=1;c=1;d=1; #10;
$stop;
end 
endmodule
