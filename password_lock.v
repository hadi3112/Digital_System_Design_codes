`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
module button(input clk, in,
output out);
reg r1,r2,r3;
always@(posedge clk)
begin
r1<=in;
r2<=r1;
r3<=r2;
end
assign out=~r3 & r2;
endmodule


module lab6(input clk,input rst,input b0,input b1,output reg unlock,output reg [1:0] state,output reg [4:0] value
    );
parameter password=5'b00000;//Hardcoded password
parameter s0=2'd1,//Locked
			 s1=2'd2,//Unlocked
			 s2=2'd3;//Incorrect
wire btn0,btn1;
button button1(clk,b0,btn0);
button button2(clk,b1,btn1);
reg [2:0] count;
always@(*)
begin
if(rst)begin value=5'b11111; state=s0; unlock=0;count=3'd0; end
else if(btn0)begin value[4:1]=value[3:0];value[0]=0;count=count+1;end
else if(btn1)begin value[4:1]=value[3:0];value[0]=1;count=count+1;end

if(count==3'd5)
	begin
		if(value==password)begin state=s1;unlock=1;count=3'd0;end
		else begin state=s2;unlock=0;count=3'd0;end
	end
	//else begin unlock=0;state=s0;end
end
endmodule

