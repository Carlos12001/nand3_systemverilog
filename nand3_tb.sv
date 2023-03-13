module nand3_tb;

  // Inputs
  logic a, b, c;
  
  // Outputs
  logic out;

  // Instantiate the Unit Under Test (UUT)
  nand3_sv uut (
    .a(a),
    .b(b),
    .c(c),
    .out(out)
  );

	initial begin
		// Testcase 0
		#10;
		a = 0; b = 0; c = 0;
		$display("NAND3(%0d,%0d,%0d) = %0d", a, b, c, out);
		
		// Testcase 1
		#10;
		a = 0; b = 0; c = 1;
		$display("NAND3(%0d,%0d,%0d) = %0d", a, b, c, out);

		// Testcase 2
		#10;
		a = 0; b = 1; c = 0;
		$display("NAND3(%0d,%0d,%0d) = %0d", a, b, c, out);
		
		// Testcase 3
		#10;
		a = 0; b = 1; c = 1;
		$display("NAND3(%0d,%0d,%0d) = %0d", a, b, c, out);

		
		// Testcase 4
		#10;
		a = 1; b = 0; c = 0;
		$display("NAND3(%0d,%0d,%0d) = %0d", a, b, c, out);

		
		// Testcase 5
		#10;
		a = 1; b = 0; c = 1;
		$display("NAND3(%0d,%0d,%0d) = %0d", a, b, c, out);

		
		// Testcase 6
		#10;
		a = 1; b = 1; c = 0;
		$display("NAND3(%0d,%0d,%0d) = %0d", a, b, c, out);

		
		// Testcase 7
		#10;
		a = 1; b = 1; c = 1;
		$display("NAND3(%0d,%0d,%0d) = %0d", a, b, c, out);
		
		// End testbench
		#10 $finish;

  end
endmodule