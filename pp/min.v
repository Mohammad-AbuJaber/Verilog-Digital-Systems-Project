module min (input [3:0] A, 
            input [3:0] B, 
            output reg [3:0] min);
  always @* begin
    if (A<B)
      min = A;
    else if (A>B)
      min = B;
      else 
      min = 0;
  end
endmodule 