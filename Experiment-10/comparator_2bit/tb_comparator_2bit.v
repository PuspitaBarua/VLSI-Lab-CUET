module tb_comparator_2bit;
    reg [1:0] a, b;
    wire gt, lt, eq;

    comparator_2bit uut (
        .a(a),
        .b(b),
        .gt(gt),
        .lt(lt),
        .eq(eq)
    );

    initial begin
        // Test case 1: a = 00, b = 01 -> a < b
        #10 a = 2'b00; b = 2'b01;
        // Test case 2: a = 10, b = 10 -> a == b
        #10 a = 2'b10; b = 2'b10;
        // Test case 3: a = 11, b = 01 -> a > b
        #10 a = 2'b11; b = 2'b01;
        // Test case 4: a = 01, b = 10 -> a < b
        #10 a = 2'b01; b = 2'b10;

        #10 $finish;
    end

    initial begin
        $monitor("At time %0t: a = %b, b = %b -> gt = %b, lt = %b, eq = %b",
                  $time, a, b, gt, lt, eq);
    end
endmodule
