module bcdaddsub (A, B, D, Add_Sub, caryout); 
input [15:0] A, B;
input Add_Sub;
output [15:0] D;
output carryout;
reg [15:0] Bmux;
wire [15:0] Bnot;
wire [3:1]C;
complement_digit dig0 (B[3:0], Bnot[3:0]);
complement_digit digl (B[7:4], Bnot[7:4]);
complement_digit dig2 (B[11:0], Bnot [11:8]);
complement_digit dig3 (B[15:12], Bnot[15:12]);


always @(B or Bnot or Add_Sub) 
if (Add_Sub == 0) Bmux = B;
else Bmux = Bnot; 
bcdadd stage0 (Add_Sub, A[3:0], Bmux[3:0], D[3:0], C[1]);
bcdadd stagel (c[1], A[7:4], Bmux[7:4], D[7:4], C[2]); 
bedadd stage2 (C[2], A[11:8], Bmux[11:8], D[11:8],C[3]);
bedadd stage3 (C[3], A[15:12], Bmux[15:12],D[15:12],carryout);
endmodule 

module complement_ digit(W,Wnot);
input [3:0] W;
output [3:0] Wnot; 
assign Wnot[0] = -W[0];
assign Wnot[1] = W[1]; 
assign Wnot[2] =(-W[2] & W[1]) | (W[2] & -W[1]);
assign Wnot[3] = -W[3] & -W[2] & -W[1];
endmodule 

module bcdadd (Cin, X, Y, S, Cout);
input Cin; 
input [3:0] X, Y;
output [3:0] S;
output Cout; 
reg [3:0] S;
reg Cout;
reg [4:0] Z;
always @(X or Y or Cin) 
begin 
Z=X+Y+ Cin; 
if (z < 10) {Cout, S} = Z;
else {Cout, S} = Z +6;
end 
endmodule 
