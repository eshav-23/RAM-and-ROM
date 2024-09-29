`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2024 16:10:52
// Design Name: 
// Module Name: rom
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

module rom(clk, enable, add, data);
input clk, enable;
input [5:0] add;         // 6-bit address
output reg [7:0] data;   // 8-bit data
integer i;
reg [7:0] mem [63:0];    // 64x8 ROM

always @(posedge clk)
begin
    if (enable)
        data <= mem[add];
    else
        data <= 8'h00;   // Default value when not enabled
end

initial
begin
    mem[0] = 8'h00;
    for (i = 1; i <= 15; i = i + 1)
    begin
        mem[i] = mem[i-1] + 8'h01;  // Increment by 1 for first 16 locations
    end
    for (i = 16; i <= 63; i = i + 1)
    begin
        mem[i] = mem[i-1] + 8'h02;  // Increment by 1 for first 16 locations
    end
end
endmodule
