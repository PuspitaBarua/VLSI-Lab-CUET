module full_adder_tb;
    reg a, b, cin;
    wire sum, cout;

    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        a = 0; b = 0; cin = 0;

        // Test case 1: 0 + 0 + 0 = 0, carry = 0
        #10 a = 0; b = 0; cin = 0;
        // Test case 2: 0 + 0 + 1 = 1, carry = 0
        #10 a = 0; b = 0; cin = 1;
        // Test case 3: 0 + 1 + 0 = 1, carry = 0
        #10 a = 0; b = 1; cin = 0;
        // Test case 4: 0 + 1 + 1 = 0, carry = 1
        #10 a = 0; b = 1; cin = 1;
        // Test case 5: 1 + 0 + 0 = 1, carry = 0
        #10 a = 1; b = 0; cin = 0;
        // Test case 6: 1 + 0 + 1 = 0, carry = 1
        #10 a = 1; b = 0; cin = 1;
        // Test case 7: 1 + 1 + 0 = 0, carry = 1
        #10 a = 1; b = 1; cin = 0;
        // Test case 8: 1 + 1 + 1 = 1, carry = 1
        #10 a = 1; b = 1; cin = 1;

        #10 $finish;
    end

    initial begin
        $monitor("At time %0t: a = %b, b = %b, cin = %b -> sum = %b, cout = %b",
                  $time, a, b, cin, sum, cout);
    end
endmodule
