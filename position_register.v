`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:59:20 12/08/2018 
// Design Name: 
// Module Name:    position_register 
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
module position_register(clk,reset,illegal,player1,player2,cur_pos,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9
    );
	 input clk,reset,illegal, player1, player2;
	 input [8:0]cur_pos;
	 output reg [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9;
	 
	 
	 always @ (posedge clk or posedge reset) begin
	 if (reset) begin
	   pos1 <= 0;
		pos2 <= 0;
		pos3 <= 0;
		pos4 <= 0;
		pos5 <= 0;
		pos6 <= 0;
		pos7 <= 0;
		pos8 <= 0;
		pos9 <= 0;
	 end
	 else if (illegal == 0) begin
		  if (player1) begin
		    if (cur_pos == 9'b000000001) begin // 1
		      pos1 <= 2'b01;
				pos2 <= pos2;
				pos3 <= pos3;
				pos4 <= pos4;
				pos5 <= pos5;
				pos6 <= pos6;
				pos7 <= pos7;
				pos8 <= pos8;
				pos9 <= pos9;
		    end
		    else if (cur_pos == 9'b000000010) begin // 2
			   pos1 <= pos1;
				pos2 <= 2'b01;
				pos3 <= pos3;
				pos4 <= pos4;
				pos5 <= pos5;
				pos6 <= pos6;
				pos7 <= pos7;
				pos8 <= pos8;
				pos9 <= pos9;
		    end
			 else if (cur_pos == 9'b000000100) begin // 3
			   pos1 <= pos1;
				pos2 <= pos2;
				pos3 <= 2'b01;
				pos4 <= pos4;
				pos5 <= pos5;
				pos6 <= pos6;
				pos7 <= pos7;
				pos8 <= pos8;
				pos9 <= pos9;
		    end
			 else if (cur_pos == 9'b000001000) begin // 4
			   pos1 <= pos1;
				pos2 <= pos2;
				pos3 <= pos3;
				pos4 <= 2'b01;
				pos5 <= pos5;
				pos6 <= pos6;
				pos7 <= pos7;
				pos8 <= pos8;
				pos9 <= pos9;
		    end
			 else if (cur_pos == 9'b000010000) begin // 5
			   pos1 <= pos1;
				pos2 <= pos2;
				pos3 <= pos3;
				pos4 <= pos4;
				pos5 <= 2'b01;
				pos6 <= pos6;
				pos7 <= pos7;
				pos8 <= pos8;
				pos9 <= pos9;
		    end
			 else if (cur_pos == 9'b000100000) begin // 6
			   pos1 <= pos1;
				pos2 <= pos2;
				pos3 <= pos3;
				pos4 <= pos4;
				pos5 <= pos5;
				pos6 <= 2'b01;
				pos7 <= pos7;
				pos8 <= pos8;
				pos9 <= pos9;
		    end
			 else if (cur_pos == 9'b001000000) begin // 7
			   pos1 <= pos1;
				pos2 <= pos2;
				pos3 <= pos3;
				pos4 <= pos4;
				pos5 <= pos5;
				pos6 <= pos6;
				pos7 <= 2'b01;
				pos8 <= pos8;
				pos9 <= pos9;
		    end
			 else if (cur_pos == 9'b010000000) begin // 8
			   pos1 <= pos1;
				pos2 <= pos2;
				pos3 <= pos3;
				pos4 <= pos4;
				pos5 <= pos5;
				pos6 <= pos6;
				pos7 <= pos7;
				pos8 <= 2'b01;
				pos9 <= pos9;
		    end
			 else if (cur_pos == 9'b100000000) begin // 9
			   pos1 <= pos1;
				pos2 <= pos2;
				pos3 <= pos3;
				pos4 <= pos4;
				pos5 <= pos5;
				pos6 <= pos6;
				pos7 <= pos7;
				pos8 <= pos8;
				pos9 <= 2'b01;
		    end

		  end else if(player2) begin
		    if (cur_pos == 9'b000000001) begin // 1
		      pos1 <= 2'b10;
				pos2 <= pos2;
				pos3 <= pos3;
				pos4 <= pos4;
				pos5 <= pos5;
				pos6 <= pos6;
				pos7 <= pos7;
				pos8 <= pos8;
				pos9 <= pos9;
		    end
		    else if (cur_pos == 9'b000000010) begin // 2
			   pos1 <= pos1;
				pos2 <= 2'b10;
				pos3 <= pos3;
				pos4 <= pos4;
				pos5 <= pos5;
				pos6 <= pos6;
				pos7 <= pos7;
				pos8 <= pos8;
				pos9 <= pos9;
		    end
			 else if (cur_pos == 9'b000000100) begin // 3
			   pos1 <= pos1;
				pos2 <= pos2;
				pos3 <= 2'b10;
				pos4 <= pos4;
				pos5 <= pos5;
				pos6 <= pos6;
				pos7 <= pos7;
				pos8 <= pos8;
				pos9 <= pos9;
		    end
			 else if (cur_pos == 9'b000001000) begin // 4
			   pos1 <= pos1;
				pos2 <= pos2;
				pos3 <= pos3;
				pos4 <= 2'b10;
				pos5 <= pos5;
				pos6 <= pos6;
				pos7 <= pos7;
				pos8 <= pos8;
				pos9 <= pos9;
		    end
			 else if (cur_pos == 9'b000010000) begin // 5
			   pos1 <= pos1;
				pos2 <= pos2;
				pos3 <= pos3;
				pos4 <= pos4;
				pos5 <= 2'b10;
				pos6 <= pos6;
				pos7 <= pos7;
				pos8 <= pos8;
				pos9 <= pos9;
		    end
			 else if (cur_pos == 9'b000100000) begin // 6
			   pos1 <= pos1;
				pos2 <= pos2;
				pos3 <= pos3;
				pos4 <= pos4;
				pos5 <= pos5;
				pos6 <= 2'b10;
				pos7 <= pos7;
				pos8 <= pos8;
				pos9 <= pos9;
		    end
			 else if (cur_pos == 9'b001000000) begin // 7
			   pos1 <= pos1;
				pos2 <= pos2;
				pos3 <= pos3;
				pos4 <= pos4;
				pos5 <= pos5;
				pos6 <= pos6;
				pos7 <= 2'b10;
				pos8 <= pos8;
				pos9 <= pos9;
		    end
			 else if (cur_pos == 9'b010000000) begin // 8
			   pos1 <= pos1;
				pos2 <= pos2;
				pos3 <= pos3;
				pos4 <= pos4;
				pos5 <= pos5;
				pos6 <= pos6;
				pos7 <= pos7;
				pos8 <= 2'b10;
				pos9 <= pos9;
		    end
			 else if (cur_pos == 9'b100000000) begin // 9
			   pos1 <= pos1;
				pos2 <= pos2;
				pos3 <= pos3;
				pos4 <= pos4;
				pos5 <= pos5;
				pos6 <= pos6;
				pos7 <= pos7;
				pos8 <= pos8;
				pos9 <= 2'b10;
		    end 
		  
		  end // end of player 2
		end // end illegal
		else begin
			   pos1 <= pos1;
				pos2 <= pos2;
				pos3 <= pos3;
				pos4 <= pos4;
				pos5 <= pos5;
				pos6 <= pos6;
				pos7 <= pos7; 
				pos8 <= pos8;
				pos9 <= pos9;
	   end
  end //end always


endmodule
