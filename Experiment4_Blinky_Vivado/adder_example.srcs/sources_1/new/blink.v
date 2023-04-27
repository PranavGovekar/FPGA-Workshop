`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2023 10:04:29 PM
// Design Name: 
// Module Name: blink
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

module blink (clk, LED);

input clk;
output LED;

reg [31:0] counter;
reg LED_status;

initial begin
counter <= 32'b0;
LED_status <= 1'b0;
end

always @ (posedge clk) 
begin
counter <= counter + 1'b1;
if (counter > 100000000)
begin
LED_status <= !LED_status;
counter <= 32'b0;
end


end

assign LED = LED_status;

endmodule 
