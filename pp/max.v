module max (input [3:0] A, 
            input [3:0] B, 
            output reg [3:0] max);
  always @* begin
    if (A>B)
      max = A;
    else if (A<B)
      max = B;
      else 
      max = 0;
  end
endmodule 