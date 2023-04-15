module full_adder_subtractor(S, C, V, A, B, Op);
   output [3:0] S;   
   output 	C,V;    
   input [3:0] 	A;   
   input [3:0] 	B;   
   input 	Op;  
   
   wire 	C0 ,C1,C2,C3,B0,B1,B2,B3; 
     
   xor(B0, B[0], Op);
   xor(B1, B[1], Op);
   xor(B2, B[2], Op);
   xor(B3, B[3], Op);
   xor(C, C3, Op);     
   xor(V, C3, C2);    
   
   full_adder fa0(S[0], C0, A[0], B0, Op);   
   full_adder fa1(S[1], C1, A[1], B1, C0);
   full_adder fa2(S[2], C2, A[2], B2, C1);
   full_adder fa3(S[3], C3, A[3], B3, C2);    
endmodule 