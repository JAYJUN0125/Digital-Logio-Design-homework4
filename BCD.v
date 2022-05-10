module BCD(clk, rst,Load);
input clk;
input rst;
input Load;
output [3:0] Din;
output [3:0] Q_out;
reg [3:0] Q_out;
reg [3:0] Din;

initial
begin
    Q_out = 4'b0000;
    Din=4'b0011;
end

always@ (posedge clk or posedge rst)
begin
    if (rst)
        Q_out = 0;
    else if (Q_out == 9)
        Q_out = 0;
    else
        Q_out++;
end
always@ (posedge clk or posedge Load)
begin
    if(Load)
        Q_out = Din;
end
endmodule
