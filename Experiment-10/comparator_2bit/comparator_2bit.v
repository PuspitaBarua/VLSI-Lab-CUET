module comparator_2bit (
    input [1:0] a,    // First 2-bit input
    input [1:0] b,    // Second 2-bit input
    output reg gt,    // Output: a > b
    output reg lt,    // Output: a < b
    output reg eq     // Output: a == b
);
    always @(*) begin
        if (a > b) begin
            gt = 1;
            lt = 0;
            eq = 0;
        end
        else if (a < b) begin
            gt = 0;
            lt = 1;
            eq = 0;
        end
        else begin
            gt = 0;
            lt = 0;
            eq = 1;
        end
    end
endmodule
