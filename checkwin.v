`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:09:51 12/10/2018 
// Design Name: 
// Module Name:    checkwin 
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
module checkwin(clk,reset,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,check,blockthis
    );
	 input clk,reset;
	 input[1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9;
	 output reg check;
	 output reg [3:0] blockthis;
	 
	 

    always @ (posedge clk or posedge reset) begin
		
		if (reset) begin
		  check <= 0;
		  blockthis <= 4'b0000;
		end
		
		//123 attacking
	   else if (pos1 == 2'b10 && pos2 == 2'b10 && pos3 == 2'b00) begin
		  check <= 1;
		  blockthis <= 4'b0011;
      end else if (pos1 == 2'b10 && pos2 == 2'b00 && pos3 == 2'b10) begin
		  check <= 1;
		  blockthis <= 4'b0010;
		end else if (pos1 == 2'b00 && pos2 == 2'b10 && pos3 == 2'b10) begin 
		  check <= 1;
		  blockthis <= 4'b0001;
		end 
		
		//456
		else if (pos4 == 2'b10 && pos5 == 2'b10 && pos6 == 2'b00) begin
		  check <= 1;
		  blockthis <= 4'b0110;
      end else if (pos4 == 2'b10 && pos5 == 2'b00 && pos6 == 2'b10) begin
		  check <= 1;
		  blockthis <= 4'b0101;
		end else if (pos4 == 2'b00 && pos5 == 2'b10 && pos6 == 2'b10) begin 
		  check <= 1;
		  blockthis <= 4'b0100; 
		end
		  
		//789
		else if (pos7 == 2'b10 && pos8 == 2'b10 && pos9 == 2'b00) begin
		  check <= 1;
		  blockthis <= 4'b1001;
      end else if (pos7 == 2'b10 && pos8 == 2'b00 && pos9 == 2'b10) begin
		  check <= 1;
		  blockthis <= 4'b1000;
		end else if (pos7 == 2'b00 && pos8 == 2'b10 && pos9 == 2'b10) begin 
		  check <= 1;
		  blockthis <= 4'b0111;
      end		  
		  
		//147
		else if (pos1 == 2'b10 && pos4 == 2'b10 && pos7 == 2'b00) begin
		  check <= 1;
		  blockthis <= 4'b0111;
      end else if (pos1 == 2'b10&& pos4 == 2'b00 && pos7 == 2'b10) begin
		  check <= 1;
		  blockthis <= 4'b0100;
		end else if (pos1 == 2'b00 && pos4 == 2'b10 && pos7 == 2'b10) begin 
		  check <= 1;
		  blockthis <= 4'b0001; 
		end
		
		//258
		else if (pos2 == 2'b10 && pos5 == 2'b10 && pos8 == 2'b00) begin
		  check <= 1;
		  blockthis <= 4'b1000;
      end else if (pos2 == 2'b10 && pos5 == 2'b00 && pos8 == 2'b10) begin
		  check <= 1;
		  blockthis <= 4'b0101;
		end else if (pos2 == 2'b00 && pos5 == 2'b10 && pos8 == 2'b10) begin 
		  check <= 1;
		  blockthis <= 4'b0010; 
		end
		
		//369
		else if (pos3 == 2'b10 && pos6 == 2'b10 && pos9 == 2'b00) begin
		  check <= 1;
		  blockthis <= 4'b1001;
      end else if (pos3 == 2'b10 && pos6 == 2'b00 && pos9 == 2'b10) begin
		  check <= 1;
		  blockthis <= 4'b0110;
		end else if (pos3 == 2'b00 && pos6 == 2'b10 && pos9 == 2'b10) begin 
		  check <= 1;
		  blockthis <= 4'b0011; 
      end
		
		//159
		else if (pos1 == 2'b10 && pos5 == 2'b10 && pos9 == 2'b00) begin
		  check <= 1;
		  blockthis <= 4'b1001;
      end else if (pos1 == 2'b10 && pos5 == 2'b00 && pos9 == 2'b10) begin
		  check <= 1;
		  blockthis <= 4'b0101;
		end else if (pos1 == 2'b00 && pos5 == 2'b10 && pos9 == 2'b10) begin 
		  check <= 1;
		  blockthis <= 4'b0001; 
      end
		
		//357
		else if (pos3 == 2'b10 && pos5 == 2'b10 && pos7 == 2'b00) begin
		  check <= 1;
		  blockthis <= 4'b0111;
      end else if (pos3 == 2'b10 && pos5 == 2'b00 && pos7 == 2'b10) begin
		  check <= 1;
		  blockthis <= 4'b0101;
		end else if (pos3 == 2'b00 && pos5 == 2'b10 && pos7 == 2'b10) begin 
		  check <= 1;
		  blockthis <= 4'b0011; 
      end 
		
		
		//123 of defending
      else if (pos1 == 2'b01 && pos2 == 2'b01 && pos3 == 2'b00) begin
		  check <= 1;
		  blockthis <= 4'b0011;
      end else if (pos1 == 2'b01 && pos2 == 2'b00 && pos3 == 2'b01) begin
		  check <= 1;
		  blockthis <= 4'b0010;
		end else if (pos1 == 2'b00 && pos2 == 2'b01 && pos3 == 2'b01) begin 
		  check <= 1;
		  blockthis <= 4'b0001;
		end 
		
		//456
		else if (pos4 == 2'b01 && pos5 == 2'b01 && pos6 == 2'b00) begin
		  check <= 1;
		  blockthis <= 4'b0110;
      end else if (pos4 == 2'b01 && pos5 == 2'b00 && pos6 == 2'b01) begin
		  check <= 1;
		  blockthis <= 4'b0101;
		end else if (pos4 == 2'b00 && pos5 == 2'b01 && pos6 == 2'b01) begin 
		  check <= 1;
		  blockthis <= 4'b0100; 
		end
		  
		//789
		else if (pos7 == 2'b01 && pos8 == 2'b01 && pos9 == 2'b00) begin
		  check <= 1;
		  blockthis <= 4'b1001;
      end else if (pos7 == 2'b01 && pos8 == 2'b00 && pos9 == 2'b01) begin
		  check <= 1;
		  blockthis <= 4'b1000;
		end else if (pos7 == 2'b00 && pos8 == 2'b01 && pos9 == 2'b01) begin 
		  check <= 1;
		  blockthis <= 4'b0111;
      end		  
		  
		//147
		else if (pos1 == 2'b01 && pos4 == 2'b01 && pos7 == 2'b00) begin
		  check <= 1;
		  blockthis <= 4'b0111;
      end else if (pos1 == 2'b01 && pos4 == 2'b00 && pos7 == 2'b01) begin
		  check <= 1;
		  blockthis <= 4'b0100;
		end else if (pos1 == 2'b00 && pos4 == 2'b01 && pos7 == 2'b01) begin 
		  check <= 1;
		  blockthis <= 4'b0001; 
		end
		
		//258
		else if (pos2 == 2'b01 && pos5 == 2'b01 && pos8 == 2'b00) begin
		  check <= 1;
		  blockthis <= 4'b1000;
      end else if (pos2 == 2'b01 && pos5 == 2'b00 && pos8 == 2'b01) begin
		  check <= 1;
		  blockthis <= 4'b0101;
		end else if (pos2 == 2'b00 && pos5 == 2'b01 && pos8 == 2'b01) begin 
		  check <= 1;
		  blockthis <= 4'b0010; 
		end
		
		//369
		else if (pos3 == 2'b01 && pos6 == 2'b01 && pos9 == 2'b00) begin
		  check <= 1;
		  blockthis <= 4'b1001;
      end else if (pos3 == 2'b01 && pos6 == 2'b00 && pos9 == 2'b01) begin
		  check <= 1;
		  blockthis <= 4'b0110;
		end else if (pos3 == 2'b00 && pos6 == 2'b01 && pos9 == 2'b01) begin 
		  check <= 1;
		  blockthis <= 4'b0011; 
      end
		
		//159
		else if (pos1 == 2'b01 && pos5 == 2'b01 && pos9 == 2'b00) begin
		  check <= 1;
		  blockthis <= 4'b1001;
      end else if (pos1 == 2'b01 && pos5 == 2'b00 && pos9 == 2'b01) begin
		  check <= 1;
		  blockthis <= 4'b0101;
		end else if (pos1 == 2'b00 && pos5 == 2'b01 && pos9 == 2'b01) begin 
		  check <= 1;
		  blockthis <= 4'b0001; 
      end
		
		//357
		else if (pos3 == 2'b01 && pos5 == 2'b01 && pos7 == 2'b00) begin
		  check <= 1;
		  blockthis <= 4'b0111;
      end else if (pos3 == 2'b01 && pos5 == 2'b00 && pos7 == 2'b01) begin
		  check <= 1;
		  blockthis <= 4'b0101;
		end else if (pos3 == 2'b00 && pos5 == 2'b01 && pos7 == 2'b01) begin 
		  check <= 1;
		  blockthis <= 4'b0011; 
      end 
		
		else begin
		  check <= 0;
		  blockthis <= 4'b0000;
		end
	
			 
	 end // always end



endmodule
