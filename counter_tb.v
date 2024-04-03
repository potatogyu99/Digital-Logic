`timescale 1ns / 1ps
module counter_tb;

reg  clk, rst_n;
wire [3:0] cnt;

counter counter (.clk(clk), .rst_n(rst_n), .cnt(cnt));

initial begin
 clk = 0; 
 rst_n = 1;
 #30   rst_n = 0;
 #30  rst_n = 1;
 #30  rst_n = 0;
 #30  rst_n = 1;
 #100
 $finish;
end

always #5 clk = ~clk;


initial begin
    $monitor("시간 = %t, 출력 = %d", $time, cnt);
end


endmodule