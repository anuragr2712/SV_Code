module h_adder (s,c,a,b);
input a,b;
output s,c;

xor G1 (s,a,b);
and G2 (c,a,b);

endmodule

//Testbench 

module tb;
reg a,b;
wire s,c;

h_adder DUT (s,c,a,b); //instantiation
initial     
    begin
        repeat(10)
            begin
            {a,b} = $random;
            #1;
              $display("a=%d,b=%d, : s = %d",a,b,{c,s});
            end
    end 
endmodule
