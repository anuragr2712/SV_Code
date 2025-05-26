module full_adder (
    input  logic a,
    input  logic b,
    input  logic cin,
    output logic sum,
    output logic cout
);
    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (cin & a);
endmodule


#testbench

module tb_full_adder;
    logic a, b, cin;
    logic sum, cout;

    // Instantiate the DUT (Device Under Test)
    full_adder dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $display("A B Cin | Sum Cout");
        $display("-----------------");
        // Test all input combinations
        for (int i = 0; i < 8; i++) begin
            {a, b, cin} = i[2:0];
            #1; // Small delay for propagation
            $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        end
        $finish;
    end
endmodule
