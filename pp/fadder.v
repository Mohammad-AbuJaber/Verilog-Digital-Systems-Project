module fadder (a,b,sum,c_out,c_in);
input [3:0] A,B ;
output [3:0] S;
output 	C,V;
wire w0 ,w1,w2,w3,B0,B1,B2,B3; 
     
  xor(B0, B[0], Op);
   xor(B1, B[1], Op);
   xor(B2, B[2], Op);
   xor(B3, B[3], Op);
   xor(C, C3, Op);     
   xor(V, C3, C2); 
   

   half_adder_struc ha0(A[0],B0 ,S[0] ,Op);   
   half_adder_struc ha1(S[1], C1, A[1], B1, C0);
   half_adder_struc ha2(S[2], C2, A[2], B2, C1);
   half_adder_struc ha3(S[3], C3, A[3], B3, C2); */
   
endmodule 

