`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:39:37 12/07/2018 
// Design Name: 
// Module Name:    FSMPVP 
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
module FSMPVP(clk,reset,player1yes,player2yes,illegal,position_for_player2,position_for_player1,win, position_reg,S);
  input clk,reset,player1yes,player2yes,illegal;
  input [1:0] win;
  input [3:0] position_for_player1, position_for_player2;
  output reg [8:0]position_reg;
  output reg [2:0]S;
  reg [8:0]temp,temp2;
  reg [1:0]loop;

  

  
  always @(*) begin
    if (reset) begin
	   temp  = 9'b000000000;
		temp2 = 9'b000000000;
	 end 
	 if (position_for_player1 == 4'b0001) begin
		temp = 9'b000000001;
	 end 
	 if (position_for_player1 == 4'b0010) begin
		temp = 9'b000000010;
	 end 
	 if (position_for_player1 == 4'b0011) begin
		temp = 9'b000000100;
	 end 
	 if (position_for_player1 == 4'b0100) begin
		temp = 9'b000001000;
    end 
	 if (position_for_player1 == 4'b0101) begin
		temp = 9'b000010000;
	 end 
	 if (position_for_player1 == 4'b0110) begin
		temp = 9'b000100000;
	 end 
	 if (position_for_player1 == 4'b0111) begin
		temp = 9'b001000000;
	 end 
	 if (position_for_player1 == 4'b1000) begin
		temp = 9'b010000000;
	 end 
	 if (position_for_player1 == 4'b1001) begin
		temp = 9'b100000000;
		
	 end 
	 if (position_for_player2 == 4'b0001) begin
		temp2 = 9'b000000001;
	 end 
	 if (position_for_player2 == 4'b0010) begin
		temp2 = 9'b000000010;
	 end 
	 if (position_for_player2 == 4'b0011) begin
		temp2 = 9'b000000100;
	 end 
	 if (position_for_player2 == 4'b0100) begin
		temp2 = 9'b000001000;
    end 
	 if (position_for_player2 == 4'b0101) begin
		temp2 = 9'b000010000;
	 end 
	 if (position_for_player2 == 4'b0110) begin
		temp2 = 9'b000100000;
	 end 
	 if (position_for_player2 == 4'b0111) begin
		temp2 = 9'b001000000;
	 end 
	 if (position_for_player2 == 4'b1000) begin
		temp2 = 9'b010000000;
	 end 
	 if (position_for_player2 == 4'b1001) begin
		temp2 = 9'b100000000;
		
	 end else begin
		temp  = temp;
		temp2 = temp2;
	 end

	    
  end // always end
  

	 
	   

  //FSM code here:
  always @ (posedge clk or posedge reset) begin
    if (reset) begin //reset states
	   loop <= 0;
	   S <= 3'b000;
		position_reg <= 0;
    end else begin
		case (S) //case machine statements for all states
		  3'b000: //idle 1
			 if (player1yes == 1) begin
				S <= 3'b001;
				position_reg <= temp;
			 end else begin
				S <= S;
				position_reg <= 0;
			 end
		  3'b001: // player 1 plays
		  //if (loop == 1) begin
		    //loop <= 0;
			 if (illegal) begin
				S <= 3'b000;
				position_reg <= 0;
			 end else begin
				S <= 3'b010;
				position_reg <= temp;
			 end
		  //end else begin
		    //loop <= loop + 2'b01;
		  //end
		  3'b010: // win/tie for play1
		  if (loop == 1) begin
		    loop <= 0;
			 if (win == 2'b01) begin
				S <= 3'b111; // end game
				position_reg <= 0;
			 end else begin
				S <= 3'b011;
				position_reg <= 0;
			 end
		  end else begin
		    loop <= loop + 2'b01;
		  end
		  3'b011: // idle 2
			 if (player2yes) begin  // player 2 or computer
				S <= 3'b100;
				position_reg <= temp2;
			 end else begin
				S <= S;
				position_reg <= 0;
			 end
		  3'b100: // player2 plays
		  //if (loop == 1) begin
		    //loop <= 0;
			 if (illegal) begin
				S <= 3'b011;
				position_reg <= 0;
			 end else begin
				S <= 3'b101;
				position_reg <= temp2;
			 end
		  //end else begin
		    //loop <= loop + 2'b01;
		  //end
		  3'b101: // win/tie for play2
		  if (loop == 1) begin
		    loop <= 0;
			 if (win == 2'b10) begin
				S <= 3'b111; // end game
				position_reg <= 0;
			 end else begin
				S <= 3'b000;
				position_reg <= 0;
			 end
		  end else begin
		    loop <= loop + 2'b01;
		  end
			  
	   endcase
    end
  end//always

endmodule  
	  