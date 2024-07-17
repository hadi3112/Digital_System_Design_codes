`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
module barrel_shifter(
    input [7:0] num,
    input [2:0] shift,
    output reg [7:0] ans
);

    wire [7:0] sh_res_1;
    wire [7:0] sh_res_2;
    wire [7:0] sh_res_3;

	 
	 assign sh_res_1 = shift[0] ? {num[7], num[7:1]} : num;                        // if shift = 0001
    assign sh_res_2 = shift[1] ? {{2{sh_res_1[7]}}, sh_res_1[7:2]} : sh_res_1;      // if shift = 0010
    assign sh_res_3 = shift[2] ? {{4{sh_res_2[7]}}, sh_res_2[7:4]} : sh_res_2;      // if shift = 0011


    always @(*)
    begin
        ans <= sh_res_3;
    end

endmodule
