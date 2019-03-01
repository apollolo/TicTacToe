`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:26 12/07/2018 
// Design Name: 
// Module Name:    Final 
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
module Final(clk, reset, playin1, playin2, position, win, pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9
    );
	 
	 input clk, reset, playin1, playin2;
	 input [3:0] position;
	 output [1:0] win;
	 output [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9;
	 
	 
	 wire player1yes, player2yes, player1next, player2next;
	 wire [1:0] win;
	 wire [8:0] cur_pos;
	 wire [1:0] Spos1,Spos2,Spos3,Spos4,Spos5,Spos6,Spos7,Spos8,Spos9;
	 wire [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9;
	 
	 
	 debouncer utt1 (
	 .in(playin1),
    .clk(clk),
	 .reset(reset),
	 .out(player1yes)
	 );
	 
	 debouncer utt2 (
	 .in(playin2),
    .clk(clk),
	 .reset(reset),
	 .out(player2yes)
	 );
	
	 
	 FSMPVP uut3 (
		.clk(clk), 
		.reset(reset), 
		.player1yes(player1yes), 
		.player2yes(player2yes), 
		.illegal(illegal), 
		.position(position), 
		.win(win), 
		.position_reg(cur_pos)
	);
	
	illegaltest uut4 (
		.clk(clk), 
		.reset(reset), 
		.pos1(pos1), 
		.pos2(pos2), 
		.pos3(pos3), 
		.pos4(pos4), 
		.pos5(pos5), 
		.pos6(pos6), 
		.pos7(pos7), 
		.pos8(pos8), 
		.pos9(pos9), 
		.illegal(illegal), 
		.cur_pos(cur_pos), 
		.Spos1(Spos1), 
		.Spos2(Spos2), 
		.Spos3(Spos3), 
		.Spos4(Spos4), 
		.Spos5(Spos5), 
		.Spos6(Spos6), 
		.Spos7(Spos7), 
		.Spos8(Spos8), 
		.Spos9(Spos9),
		.player1(player1yes), 
		.player2(player2yes),
		.player1yes(player1next), 
		.player2yes(player2next)
	);
	
	
	position_register uut5 (
		.clk(clk), 
		.reset(reset), 
		.illegal(illegal), 
		.player1(player1next), 
		.player2(player2next), 
		.cur_pos(cur_pos), 
		.pos1(pos1), 
		.pos2(pos2), 
		.pos3(pos3), 
		.pos4(pos4), 
		.pos5(pos5), 
		.pos6(pos6), 
		.pos7(pos7), 
		.pos8(pos8), 
		.pos9(pos9), 
		.Spos1(Spos1), 
		.Spos2(Spos2), 
		.Spos3(Spos3), 
		.Spos4(Spos4), 
		.Spos5(Spos5), 
		.Spos6(Spos6), 
		.Spos7(Spos7), 
		.Spos8(Spos8), 
		.Spos9(Spos9)
	);
	windetect uut6 (
		.clk(clk), 
		.reset(reset), 
		.pos1(pos1), 
		.pos2(pos2), 
		.pos3(pos3), 
		.pos4(pos4), 
		.pos5(pos5), 
		.pos6(pos6), 
		.pos7(pos7), 
		.pos8(pos8), 
		.pos9(pos9), 
		.winner(win)
	);
	



endmodule
