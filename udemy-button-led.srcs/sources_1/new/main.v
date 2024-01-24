`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2024 11:16:14
// Design Name: 
// Module Name: main
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


module main#( 
    parameter NUM_BUTTONS = 2
) (
    input [NUM_BUTTONS-1:0] button,
    output [NUM_BUTTONS-1:0] led
);

    assign led = button;

endmodule
