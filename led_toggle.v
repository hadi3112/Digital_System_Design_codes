`timescale 1ns / 1ps


//////////////////////////////////////////////////////////////////////////////////
module led_toggle(btn,led);
input [1:0] btn;
output reg [1:0] led;
always@(posedge btn[0])
	led[0]=~led[0];
always@(posedge btn[1])
	led[1]=~led[1];

endmodule

