module mux_2x1_tb;
    reg a, b, sel;
    wire y;

    mux_2x1 uut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    initial begin
        a = 0;
        b = 0;
        sel = 0;

        #10 a = 0; b = 0; sel = 0; // Expect y = a = 0
        #10 a = 0; b = 1; sel = 0; // Expect y = a = 0
        #10 a = 1; b = 0; sel = 0; // Expect y = a = 1
        #10 a = 1; b = 1; sel = 0; // Expect y = a = 1
        #10 a = 0; b = 0; sel = 1; // Expect y = b = 0
        #10 a = 0; b = 1; sel = 1; // Expect y = b = 1
        #10 a = 1; b = 0; sel = 1; // Expect y = b = 0
        #10 a = 1; b = 1; sel = 1; // Expect y = b = 1

        #10 $finish;
    end

    initial begin
        $monitor("At time %0t: a = %b, b = %b, sel = %b -> y = %b", $time, a, b, sel, y);
    end
endmodule
