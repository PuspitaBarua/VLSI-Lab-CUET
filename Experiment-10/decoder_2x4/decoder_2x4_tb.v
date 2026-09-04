module decoder_2x4_tb;
    reg [1:0] in;
    wire [3:0] out;

    decoder_2x4 uut (
        .in(in),
        .out(out)
    );

    initial begin
        // Test case 1: in = 00 -> out = 0001
        #10 in = 2'b00;
        // Test case 2: in = 01 -> out = 0010
        #10 in = 2'b01;
        // Test case 3: in = 10 -> out = 0100
        #10 in = 2'b10;
        // Test case 4: in = 11 -> out = 1000
        #10 in = 2'b11;

        #10 $finish;
    end

    initial begin
        $monitor("At time %0t: in = %b -> out = %b", $time, in, out);
    end
endmodule
