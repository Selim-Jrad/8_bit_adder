module adder_8bit (
    input  [7:0] a,      // 8-bit input a
    input  [7:0] b,      // 8-bit input b
    input        carry_in,    // Carry input
    output [7:0] sum,    // 8-bit sum output
    output       carry_out    // Carry output
);
    wire [8:0] temp_sum;
	assign temp_sum = {1'b0, a} + {1'b0, b} + carry_in;
    assign sum  = temp_sum[7:0];
    assign carry_out = temp_sum[8];

endmodule
