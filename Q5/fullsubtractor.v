module fullsub(
input a,b,b_in,
output diff,
output b_out);

assign diff=a ^ b ^ b_in;
assign b_out= (~ a & (b | b_in)) | (b & b_in);
endmodule
