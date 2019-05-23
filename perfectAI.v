`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:25 12/10/2018 
// Design Name: 
// Module Name:    perfectAI 
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
module perfectAI(clk,reset,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,check,blockthis,computer,comppos
    );
	 input clk,reset;
	 input[1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9;
	 input check;
	 input [3:0] blockthis;
	 output reg computer;
	 output reg [3:0] comppos;
	 reg [3:0]move; // number of player1 played on the board
	 
	 
	 
	 
	 always @ (posedge clk or posedge reset) begin//
	   if (reset) begin
		  move <= 0; //
		  //computer <= 0;
		end else begin
		  move <= pos1 + pos2 + pos3 + pos4 + pos5 + pos6 + pos7 + pos8 + pos9;
		  //computer <= computer;
		end
	 end
	 
	 always @(*) begin
	   if (check) begin
		  computer = 1;
		  comppos = blockthis; //defend or straight up win
		end 
	   else if (move == 1) begin
	     if (pos5 == 0) begin
		    computer = 1;
	       comppos = 4'b0101;
	     end else begin
		    computer = 1; 
		    comppos = 4'b0001;
		  end
	   end // move1 end
		
		else if (move == 4) begin//move4 begin
		  if ((pos1 == 2'b01 && pos9 == 2'b01 && pos2 == 2'b00) | (pos3 == 2'b01 && pos7 == 2'b01 && pos2 == 2'b00))  begin  //opposite corners
		    computer = 1; 
		    comppos = 4'b0010;		  
		  end
		  else if (pos5 == 2'b01 && pos9 == 2'b01 && pos3 == 2'b00) begin //special case
		    computer = 1;
			 comppos = 4'b0011;
		  end
		  else if ((pos3 == 2'b01 && pos4 == 2'b01 && pos1 == 2'b00) || (pos2 == 2'b01 && pos7 == 2'b01 && pos1 == 2'b00)) begin //knight moves
		    computer = 1;
			 comppos = 4'b0001;
		  end
		  else if ((pos1 == 2'b01 && pos6 == 2'b01 && pos3 == 2'b00) || (pos2 == 2'b01 && pos9 == 2'b01 && pos3 == 2'b00)) begin
			 computer = 1;
			 comppos = 4'b0011;
		  end
		  else if ((pos1 == 2'b01 && pos8 == 2'b01 && pos7 == 2'b00) || (pos4 == 2'b01 && pos9 == 2'b01 && pos7 == 2'b00)) begin
			 computer = 1;
			 comppos = 4'b0111;
		  end 
		  else if ((pos3 == 2'b01 && pos8 == 2'b01 && pos9 == 2'b00) || (pos6 == 2'b01 && pos7 == 2'b01 && pos9 == 2'b00)) begin
			 computer = 1;
			 comppos = 4'b1001;
		  end
		  else if ((pos2 == 2'b01 && pos8 == 2'b01 && pos1 == 2'b00) || (pos4 == 2'b01 && pos6 == 2'b01 && pos1 == 2'b00)) begin // opposite sides
		    computer = 1;
			 comppos = 4'b0001;
		  end
		  else if ((pos2 == 2'b01 && pos4 == 2'b01) || (pos6 == 2'b01 && pos8 == 2'b01)) begin // diagonal sides 
		    computer = 1;
			 comppos = 4'b0111;
		  end
		  else if ((pos2 == 2'b01 && pos6 == 2'b01) || (pos4 == 2'b01 && pos8 == 2'b01)) begin
		    computer = 1;
			 comppos = 4'b0001;
		  end
		
		end//move4 end
		else if (move >= 7) begin  // when C is in the middle and move is > 7 and stuck, go to random side
		   computer = 1;
			if (pos2 == 2'b00) begin
			  comppos = 4'b0010;
			end else if (pos4 == 2'b00) begin
			  comppos = 4'b0100;
			end else if (pos6 == 2'b00) begin
			  comppos = 4'b0110;
			end else begin
			  comppos = 4'b1000;
			end
		
		end
		
		else begin
		  computer = 0;
		  comppos = 4'b0000;
		end
		

		
    end // end always
	 
	 

endmodule
