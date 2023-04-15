module half_adder_struc (a,b,sum,c_out,op);
input a,b,op;
output sum,c_out;
wire w0;
xor (w0,b,op);
xor(sum,a,w0);
and(c_out,a,w0);


endmodule 