`timescale 1ns/1ps
module register4_tb;

reg clk;
reg [3:0] d;
wire [3:0] q;
register4  dut (
.clk(clk),
.d(d),
.q(q)
);
always #5 clk = ~clk;
initial begin
clk = 0;
d = 4'b0000;
#2;
d=4'b1011;

#10;
d = 4'b0010;

#10;
d  = 4'b1111;

#10;
$finish;
end

initial begin
$monitor("time=%0t clt=%b d=%b q=%b", $time, clk, d, q);
end 
endmodule