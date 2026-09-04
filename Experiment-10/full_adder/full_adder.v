module full_adder (
    input a,        // First input bit
    input b,        // Second input bit
    input cin,      // Carry input
    output sum,     // Sum output
    output cout     // Carry output
);
    assign {cout, sum} = a + b + cin;
endmodule
