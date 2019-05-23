`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:07:19 12/09/2018 
// Design Name: 
// Module Name:    FSMPVC 
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
module FSMPVC(clk,reset,player1yes,illegal,position,win,position_reg,S);
  input clk, reset, player1yes, illegal;
  input [1:0] win;
  input [3:0] position;
  output reg [8:0]position_reg;
  output reg [3:0]S;
  
  reg [8:0]temp;
  reg [1:0]loop;
  
  always @(*) begin
    if (reset) begin
	   temp = 9'b000000000;
	 end else if (position == 4'b0001) begin
	   temp = 9'b000000001;
	 end else if (position == 4'b0010) begin
	   temp = 9'b000000010;
	 end else if (position == 4'b0011) begin
	   temp = 9'b000000100;
	 end else if (position == 4'b0100) begin
	   temp = 9'b000001000;
	 end else if (position == 4'b0101) begin
	   temp = 9'b000010000;
	 end else if (position == 4'b0110) begin
	   temp = 9'b000100000;
	 end else if (position == 4'b0111) begin
	   temp = 9'b001000000;
	 end else if (position == 4'b1000) begin
	   temp = 9'b010000000;
	 end else if (position == 4'b1001) begin
	   temp = 9'b100000000;
	 end else begin
	   temp = temp;
	 end
  end // always end
  
	 

//  always @ (posedge clk or posedge reset) begin
//    if (reset) begin //reset states
//	   loop <= 0;
//	   S <= 3'b0000;
//		position_reg <= 0;
//    end else begin
//		case (S) //case machine statements for all states
//		  3'b0000: //idle 1
//			 if (player1yes == 1) begin 
//				position_reg <= temp;
//				if (pos5 != 0) begin // player1 takes middle
//				  S <= 3'b0001;
//				end else begin // player1 takes anything else
//				  S <= 3'b0010;
//				end
//			 end else begin
//				S <= S;
//				position_reg <= 0;
//			 end
//		  3'b0001: //player1 move middle
//		    if (player1yes == 1) begin
//			   S <= 3'b
endmodule
