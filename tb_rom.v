`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2024 16:23:27
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
reg clk, enable;
reg [5:0] add;
wire [7:0] data;


rom DUT (clk, enable, add, data);


initial begin
    clk = 1'b1;
    forever #5 clk = ~clk;
end

// Testbench procedure
initial
begin
    enable = 1'b0;   // Start with ROM disabled
    add = 6'h0;      // Initialize address to 0

    #10 enable = 1'b1;   // Enable ROM after 10ns
     add = 6'd04;
      #10 enable = 1'b1;   // Enable ROM after 10ns
     add = 6'd14;
      #10 enable = 1'b1;   // Enable ROM after 10ns
     add = 6'd23;
     #10 enable = 1'b0;   // Start with ROM disabled

      #10 enable = 1'b1;   // Enable ROM after 10ns
     add = 6'd44;
      #10 enable = 1'b1;   // Enable ROM after 10ns
     add = 6'd55;
#10 $finish; 
end
endmodule
