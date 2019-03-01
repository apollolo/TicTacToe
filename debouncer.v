`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:48:31 10/18/2018 
// Design Name: 
// Module Name:    debouncer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module debouncer(in, clk, reset, out

		
    );
	 input in,clk, reset;
	 output reg out;
	 reg [31:0]a;
	 
	  
	 always @(posedge clk or posedge reset) begin
		if(reset) begin
			a <= 0;
			out <= 0;
		end else if (in) begin
			a <= a + 1;
			out <=0;
		end else if (a > 1) begin //1000000
			a <= 0;
			out <= 1;
		end else begin
			a <= 0;
			out <= 0;
		end
	end	


endmodule
