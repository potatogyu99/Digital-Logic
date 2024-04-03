module counter(clk, rst_n, cnt);

input   clk, rst_n;
output [3:0] cnt;
reg    [3:0] cnt;

always @(posedge clk or negedge rst_n) begin
 if (!rst_n)
  cnt = 4'b0000;
 else
  cnt = cnt+1;
 end

endmodule