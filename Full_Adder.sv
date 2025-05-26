// Code your testbench here
// or browse Examples
module f_adder(s,cout,a,b,cin);
  input a,b,cin;
  output s,cout;  
 assign  s= (a ^ b ^ cin) ;
assign cout=(a & b) | cin & (a ^ b);
endmodule

// Testbench
module tb;
  reg a,b,cin;
  wire s,cout;
  
f_adder DUT (s,cout,a,b,cin);

  initial 
    begin
      repeat(10)
        begin
          {a,b,cin} = $random;
          #1;
          $display("a=%d,b=%d.cin=%d , : , s = %d, cout = %d", a,b,cin,s,cout);
        end
    end
endmodule

      
      
      
      
      
      
      
      
      
      
      
      
      
      
