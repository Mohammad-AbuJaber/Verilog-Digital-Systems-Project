module full_adder(S, Cout, A, B, Cin);
   output S,Cout;
   input  A,B,Cin;
  
   wire   w1,w2,w3,w4;
      
   xor(w1, A, B);
   xor(S, Cin, w1);
   and(w2, A, B);   
   and(w3, A, Cin);
   and(w4, B, Cin);   
   or(Cout, w2, w3, w4);
endmodule 