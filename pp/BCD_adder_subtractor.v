module BCD_adder_subtractor (A,B , Cin , SUM , Cout);
input [3:0] A,B;
input Cin;
output [3:0] SUM ;
output Cout;

wire [3:0] S1,S2;
wire C_out;
wire [3:0] w;


full_adder_subtractor(S1,C_out ,V,A,B,Cin);


and (S2[0],S1[1],S1[3]);
and (S2[1],S1[2],S2[3]);
or (S2[2],S2[0],S2[1],C_out);
and (w[1],'b1,S2[2]);
and (w[2],'b1,S2[2]);


full_adder_subtractor(SUM,Cout,V,S1,w,0);

endmodule 