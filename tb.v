`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2024 18:03:14
// Design Name: 
// Module Name: tb
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


module tb();
reg [7:0]ip;
reg clk,wr;
reg [5:0]add;
wire [7:0]q;
ram1 DUT (ip,clk,add,wr,q);
initial
begin
clk=1'b1;
forever #5clk = ~clk;
end

initial
begin
ip = 8'h01;
add = 5'd0;
wr = 1'b1;
#10

ip = 8'h02;
add = 5'd1;
#10

ip = 8'h03;
add = 5'd2;
#10

ip = 8'h04;
add = 5'd3;
#10

ip = 8'h05;
add = 5'd4;
#10

add = 5'd0;
wr = 1'b0;
#10

add = 5'd1;

#10

add = 5'd2;
#10

add = 5'd3;
#10

add = 5'd4;
#10
ip = 8'h11;
add = 5'd5;
wr = 1'b1;
#100 $finish;
end


endmodule
