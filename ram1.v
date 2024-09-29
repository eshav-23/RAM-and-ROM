`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2024 17:03:30
// Design Name: 
// Module Name: ram1
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


module ram1(ip,clk,add,wr,q);
input [7:0]ip;
input [5:0]add;
input clk;
input wr;
output [7:0]q;
reg [5:0]add_reg;
reg [7:0]ram[63:0];

always @(posedge clk)
begin
if(wr)
ram[add]<= ip;
else 
add_reg <= add;
end
assign q = ram[add_reg];
endmodule
