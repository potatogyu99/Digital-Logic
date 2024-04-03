module parity(
    input a, b, c,
    output S
);
    assign S = ~(a&b) & ~c;
endmodule
