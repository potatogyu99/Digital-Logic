`timescale 1ns/ 1ps
module parity_tb;
reg a, b, c;
wire S;
parity instance_parity(
    .a(a),.b(b),.c(c),.S(S)
);
initial begin
    a=0; b=0; c=0;
    #20;
    a=0; b=0; c=1;
    #20;
    a=0; b=1; c=0;
    #20;
    a=0; b=1; c=1;
    #20;
    a=1; b=0; c=0;
    #20;
    a=1; b=0; c=1;
    #20;
    a=1; b=1; c=0;
    #20;
    a=1; b=1; c=1;
    #20;
    $finish;
end
initial begin
    $monitor("시간=%t, a=%b, b=%b, c=%b, S=%b", $time, a, b, c, S);
end
endmodule