`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:51:47 12/08/2018 
// Design Name: 
// Module Name:    windetect 
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
module windetect(clk, reset, pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, winner
    );
	 
	 input clk, reset;
	 input [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9;
	 output reg [1:0] winner;
	 // 00: no winner continue
	 // 01: player 1 win
	 // 10: player 2 win
	 // 11: tie game
	 
	 
	 always @ (posedge clk or posedge reset) begin
		if (reset) begin
		  winner <= 2'b00;
		end
	   else if (pos1 == 2'b01 && pos2 == 2'b01 && pos3 == 2'b01) begin
		  winner <= 2'b01;
		end else if (pos4 == 2'b01 && pos5 == 2'b01 && pos6 == 2'b01) begin
		  winner <= 2'b01;
		end else if (pos7 == 2'b01 && pos8 == 2'b01 && pos9 == 2'b01) begin
		  winner <= 2'b01;
		end else if (pos1 == 2'b01 && pos4 == 2'b01 && pos7 == 2'b01) begin
		  winner <= 2'b01;
		end else if (pos2 == 2'b01 && pos5 == 2'b01 && pos8 == 2'b01) begin
		  winner <= 2'b01;
		end else if (pos3 == 2'b01 && pos6 == 2'b01 && pos9 == 2'b01) begin
		  winner <= 2'b01;
		end else if (pos1 == 2'b01 && pos5 == 2'b01 && pos9 == 2'b01) begin
		  winner <= 2'b01;
		end else if (pos3 == 2'b01 && pos5 == 2'b01 && pos7 == 2'b01) begin
		  winner <= 2'b01;
		end 
		
		
		else if (pos1 == 2'b10 && pos2 == 2'b10 && pos3 == 2'b10) begin
		  winner <= 2'b10;
		end else if (pos4 == 2'b10 && pos5 == 2'b10 && pos6 == 2'b10) begin
		  winner <= 2'b10;
		end else if (pos7 == 2'b10 && pos8 == 2'b10 && pos9 == 2'b10) begin
		  winner <= 2'b10;
		end else if (pos1 == 2'b10 && pos4 == 2'b10 && pos7 == 2'b10) begin
		  winner <= 2'b10;
		end else if (pos2 == 2'b10 && pos5 == 2'b10 && pos8 == 2'b10) begin
		  winner <= 2'b10;
		end else if (pos3 == 2'b10 && pos6 == 2'b10 && pos9 == 2'b10) begin
		  winner <= 2'b10;
		end else if (pos1 == 2'b10 && pos5 == 2'b10 && pos9 == 2'b10) begin
		  winner <= 2'b10;
		end else if (pos3 == 2'b10 && pos5 == 2'b10 && pos7 == 2'b10) begin
		  winner <= 2'b10;
		end else if (pos1 == 0||pos2 == 0||pos3 == 0||pos4 == 0||pos5 == 0||pos6 == 0||pos7 == 0||pos8 == 0||pos9 == 0)begin // no winner continue condition
		  winner <= 2'b00;
		  
		end else begin // tie condition
		  winner <= 2'b11;
		end
	 
	 
	 end // end always


endmodule
