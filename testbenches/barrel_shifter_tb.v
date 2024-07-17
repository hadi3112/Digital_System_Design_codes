`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:35:18 12/15/2023
// Design Name:   barrel_shifter
// Module Name:   C:/LCS Labs/barrel_shifter_8/barrel_shifter_tb.v
// Project Name:  barrel_shifter_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: barrel_shifter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module barrel_shifter_tb;

	// Inputs
	reg [7:0] num;
	reg [3:0] shift;

	// Outputs
	wire [7:0] ans;

	// Instantiate the Unit Under Test (UUT)
	barrel_shifter uut (
		.num(num), 
		.shift(shift), 
		.ans(ans) 
	);

	initial begin
		// Initialize Inputs
		num = -86;
		shift = 5;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

