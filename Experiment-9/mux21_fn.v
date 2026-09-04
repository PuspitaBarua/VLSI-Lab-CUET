module mux21_fn(I0,I1,S,f);
input I0,I1,S;
output reg f;
always@(I0,I1,S)
begin
if (S == 0)
f = I0;
else
f = I1;
end
endmodule
