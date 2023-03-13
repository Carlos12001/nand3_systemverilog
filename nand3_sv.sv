module nand3_sv(input logic a, b, c, output logic out);
  assign out = ~(a & b & c);
endmodule
