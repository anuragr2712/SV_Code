#Design

module HalfAdder (
    input  logic a, b,
    output logic sum, carry
);

    assign sum   = a ^ b;
    assign carry = a & b;

endmodule

#testbench

module half_adder_tb;

    // Declare testbench variables
    logic a, b;
    logic sum, carry;

    // Instantiate the DUT (Device Under Test)
    HalfAdder dut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    // Apply stimulus
    initial begin
        // Display header
        $display(" a | b | sum | carry ");
        $display("----------------------");

        // Test case 1: a=0, b=0
        a = 0; b = 0;
        #10;
        $display(" %b | %b |  %b  |   %b", a, b, sum, carry);

        // Test case 2: a=0, b=1
        a = 0; b = 1;
        #10;
        $display(" %b | %b |  %b  |   %b", a, b, sum, carry);

        // Test case 3: a=1, b=0
        a = 1; b = 0;
        #10;
        $display(" %b | %b |  %b  |   %b", a, b, sum, carry);

        // Test case 4: a=1, b=1
        a = 1; b = 1;
        #10;
        $display(" %b | %b |  %b  |   %b", a, b, sum, carry);

        $finish;
    end

endmodule
