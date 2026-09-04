module mux_2x1 (A, B, S, Y);
input A, B, S;
output Y;

assign Y = (~S & A) | (S & B);
endmodule
