`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2024 18:27:14
// Design Name: 
// Module Name: tbb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tbb();
reg [7:0]ip_a,ip_b;
reg clk,wr_a,wr_b;
reg [5:0]add_a,add_b;
wire [7:0]q_a,q_b;
 ram21 DUT (ip_a,ip_b,add_a,add_b,clk,wr_a,wr_b,q_a,q_b);
 initial
begin
clk=1'b1;
forever #5clk = ~clk;
end

initial
begin
ip_a = 8'h01;
ip_b = 8'h11;
add_a = 5'd0;
add_b = 5'd0;
wr_a = 1'b1;
wr_b = 1'b1;
#10

ip_b = 8'h12;
add_a = 5'd0;
add_b = 5'd1;
wr_a = 1'b0;
#10

ip_a = 8'h02;
add_a = 5'd1;
add_b = 5'd0;
wr_a = 1'b1;
wr_b = 1'b0;
#10

ip_a = 8'h03;
ip_b = 8'h13;
add_a = 5'd2;
add_b = 5'd2;
wr_a = 1'b1;
wr_b = 1'b1;
#10

ip_a = 8'h04;
ip_b = 8'h14;
add_a = 5'd3;
add_b = 5'd3;
wr_a = 1'b1;
wr_b = 1'b1;
#10

ip_a = 8'h05;
ip_b = 8'h15;
add_a = 5'd4;
add_b = 5'd4;
wr_a = 1'b1;
wr_b = 1'b1;
#10

ip_a = 8'h06;
ip_b = 8'h09;
add_a = 5'd5;
add_b = 5'd5;
wr_a = 1'b1;
wr_b = 1'b1;
#10

ip_a = 8'h07;
ip_b = 8'h08;
add_a = 5'd6;
add_b = 5'd6;
wr_a = 1'b1;
wr_b = 1'b1;
#10


add_a = 5'd2;
add_b = 5'd2;
wr_a = 1'b0;
wr_b = 1'b0;
#10

add_a = 5'd3;
add_b = 5'd4;
wr_a = 1'b0;
wr_b = 1'b0;
#10
add_a = 5'd5;
add_b = 5'd6;
wr_a = 1'b0;
wr_b = 1'b0;
#100 $finish;
end


endmodule
