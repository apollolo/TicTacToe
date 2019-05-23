`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:49:00 12/08/2018 
// Design Name: 
// Module Name:    illegaltest 
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
module illegaltest(clk, reset, pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,illegal,cur_pos,player1,player2, player1yes, player2yes
    );
	 input clk, reset;
	 input [8:0]cur_pos;
	 input player1,player2;
	 input [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9;
	 output reg player1yes, player2yes;
	 output reg illegal;
	 
	 
	 always @ (posedge clk or posedge reset) begin
	   if (reset) begin
		  player1yes <= 0;
		  player2yes <= 0;
	   end else if (player1) begin
		  player1yes <= 1;
		  player2yes <= 0;
		end else if (player2) begin
		  player1yes <= 0;
		  player2yes <= 1;
		end else begin
		  player1yes <= player1yes;
		  player2yes <= player2yes;
		end
	 end
	
	 
	 always @ (*) begin
	  
	   if (cur_pos == 9'b000000001) begin // 1
		  if(pos1 == 0) begin
		    illegal = 0;
		  end else begin
		    illegal = 1;
		  end
		end
		else if (cur_pos == 9'b000000010) begin // 2
		  if(pos2 == 0) begin
		    illegal = 0;
		  end else begin
		    illegal = 1;
		  end
		end
		else if (cur_pos == 9'b000000100) begin // 3
		  if(pos3 == 0) begin
		    illegal = 0;
		  end else begin
		    illegal = 1;
		  end
		end
		else if (cur_pos == 9'b000001000) begin // 4
		  if(pos4 == 0) begin
		    illegal = 0;
		  end else begin
		    illegal = 1;
		  end
		end
		else if (cur_pos == 9'b000010000) begin // 5
		  if(pos5 == 0) begin
		    illegal = 0;
		  end else begin
		    illegal = 1;
		  end
		end
		else if (cur_pos == 9'b000100000) begin // 6
		  if(pos6 == 0) begin
		    illegal = 0;
		  end else begin
		    illegal = 1;
		  end
		end
		else if (cur_pos == 9'b001000000) begin // 7
		  if(pos7 == 0) begin
		    illegal = 0;
		  end else begin
		    illegal = 1;
		  end
		end
		else if (cur_pos == 9'b010000000) begin // 8
		  if(pos8 == 0) begin
		    illegal = 0;
		  end else begin
		    illegal = 1;
		  end
		end
		else if (cur_pos == 9'b100000000) begin // 9
		  if(pos9 == 0) begin
		    illegal = 0;
		  end else begin
		    illegal = 1;
		  end
		end else begin
		  illegal = 1;
		end

		
		
	 end // end always
	 
	 


endmodule
