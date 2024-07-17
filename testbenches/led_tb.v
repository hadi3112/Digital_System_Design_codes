`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg [1:0] btn;

	// Outputs
	reg [1:0] led;  // Change wire to reg

	// Instantiate the Unit Under Test (UUT)
	led_toggle uut (
		.btn(btn), 
		.led(led)
	);

	initial begin
		// Initialize Inputs
		btn = 0;
		led = 0;

		// Wait 100 ns for global reset to finish
		#100;
		btn = 3;
	
		#100;
		btn = 0;
		
		#100;
		btn = 1;
		
		#100;
		btn = 3;
		
		#100;

	end
      
endmodule