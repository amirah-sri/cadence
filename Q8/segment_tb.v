module tb_7_seg_driver;
 reg[3:0]hex;
 wire[6:0]seg;
seg_driver a1(.hex(hex),.seg(seg));
initial begin
hex=4'h0; #10;
hex=4'h1; #10;
hex=4'h2; #10;
hex=4'h3; #10; 
hex=4'h4; #10;
hex=4'h5; #10;
hex=4'h6; #10;
hex=4'h7; #10;
hex=4'h8; #10;
hex=4'h9; #10;
hex=4'hA; #10;
hex=4'hB; #10;
hex=4'hC; #10;
hex=4'hD; #10;
hex=4'hE; #10;
hex=4'hF; #10;
$stop;
   end
     endmodule
