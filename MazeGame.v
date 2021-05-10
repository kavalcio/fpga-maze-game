`timescale 1ns/1ns
 
	
module MazeGame
	(
		CLOCK_50,						//	On Board 50 MHz
		SW,
    KEY,
		VGA_CLK,   						//	VGA Clock
		VGA_HS,							//	VGA H_SYNC
		VGA_VS,							//	VGA V_SYNC
		VGA_BLANK_N,						//	VGA BLANK
		VGA_SYNC_N,						//	VGA SYNC
		VGA_R,   						//	VGA Red[9:0]
		VGA_G,	 						//	VGA Green[9:0]
		VGA_B   						//	VGA Blue[9:0]
	);

	input			CLOCK_50;				//	50 MHz
  input [9:0] SW;
  input [3:0] KEY;
	output			VGA_CLK;   				//	VGA Clock
	output			VGA_HS;					//	VGA H_SYNC
	output			VGA_VS;					//	VGA V_SYNC
	output			VGA_BLANK_N;				//	VGA BLANK
	output			VGA_SYNC_N;				//	VGA SYNC
	output	[9:0]	VGA_R;   				//	VGA Red[9:0]
	output	[9:0]	VGA_G;	 				//	VGA Green[9:0]
	output	[9:0]	VGA_B;   				//	VGA Blue[9:0]
	
  wire [7:0] muxOutXWire;
  wire [6:0] muxOutYWire;
  wire [2:0] colourWire;
  wire dirWire;
  wire [2:0] selColWire;
  wire ldxWire;
  wire ldyWire;
  wire plotWire;
  wire resetCount;
  wire resetReg;
  wire teleportWire;
  wire [14:0] countWire;
  wire [1:0] currentLevelWire;
  wire [2:0] level1ColWire, level2ColWire, level3ColWire;
  
	// Create an Instance of a VGA controller - there can be only one!
	// Define the number of colours as well as the initial background
	// image file (.MIF) for the controller.
	vga_adapter VGA(
      .resetn(SW[0]),
			.clock(CLOCK_50),
			.colour(colourWire),
			.x(muxOutXWire - 1),  //to fix 1st col we shift it all to the left by 1
			.y(muxOutYWire),  //to fix 1st col we shift it all to the left by 1
			.plot(plotWire),
			/* Signals for the DAC to drive the monitor. */
			.VGA_R(VGA_R),
			.VGA_G(VGA_G),
			.VGA_B(VGA_B),
			.VGA_HS(VGA_HS),
			.VGA_VS(VGA_VS),
			.VGA_BLANK(VGA_BLANK_N),
			.VGA_SYNC(VGA_SYNC_N),
			.VGA_CLK(VGA_CLK));
		defparam VGA.RESOLUTION = "160x120";
		defparam VGA.MONOCHROME = "FALSE";
		defparam VGA.BITS_PER_COLOUR_CHANNEL = 1;
		defparam VGA.BACKGROUND_IMAGE = "Start.mif"; //add dot for starting point
  
  
  datapath noboi(.dir(dirWire),
                 .ldx(ldxWire), 
                 .ldy(ldyWire),
                 .reset(SW[0]),
                 .resetReg(resetReg),
                 .selCol(selColWire), 
                 .outX(muxOutXWire), 
                 .outY(muxOutYWire),
                 .colour(colourWire),
                 .CLOCK(CLOCK_50),
					  .resetCount(resetCount),
					  .countOut(countWire),
					  .level(currentLevelWire),
					  .level1Col(level1ColWire),
					  .level2Col(level2ColWire),
					  .level3Col(level3ColWire),
					  .teleport(teleportWire)
					  
                           );
  
  
  control yeahboi(.L(~KEY[3]),
                  .R(~KEY[0]),
                  .U(~KEY[2]),
                  .D(~KEY[1]),
                  .ldx(ldxWire),
                  .ldy(ldyWire),
                  .dir(dirWire),
                  .plot(plotWire),
                  .selCol(selColWire),
                  .reset(SW[0]),
                  .resetReg(resetReg),
                  .resetCount(resetCount),
						      .clock(CLOCK_50),
								.countOut(countWire),
								.currentLevel(currentLevelWire),
								.level1Col(level1ColWire),
								.level2Col(level2ColWire),
								.level3Col(level3ColWire),
								.teleport(teleportWire)
                 );
  
	
endmodule


module reg8bit(d, enable, clock, reset, q , tp);
	input [7:0] d ;
	input clock;
	input enable;
	input	reset, tp;
	output reg [7:0] q;
	
  always @(posedge clock)				  
	begin  
    if (!reset)			 
      q <= 8'b01001111;																
	 else if(enable && !tp)		 						
			q <= d;	
	else if(enable && tp)
			q <= 8'b10011001;
	end	
endmodule



module reg7bit(d, enable, clock, reset, q, tp);
  input [6:0] d ;
	input clock;
	input enable;
	input	reset, tp;
  output reg [6:0] q;
	
	always @(posedge clock)				 
	begin  
    if (reset == 0)		 
      q <= 7'b1101110; 
	 else if(enable && !tp)		 						
			q <= d;
	else if(enable && tp)
			q<= 7'b1100100;
	end	
endmodule



module adderSubtractor(d, addsub, q); 
  input [7:0] d;
  input addsub;
  output reg [7:0] q;
  
  always@ (*)
    if (addsub)
      q <= d+1;
  	else 
      q <= d-1;
endmodule


  
module timer(reset, clock, q);

input reset, clock;
reg [23:0]count;
output reg q;

always @(posedge clock)
if (!reset)
	count = 2999999;
else if (count == 0)
	count =2999999;
else
	count = count - 1;
	
always @(posedge clock)
if(!reset)
	q = 0;
else if(count==0)
	q = 1;
else
	q = 0;

endmodule

module timer2(reset, clock, q);

input reset, clock;
  reg [3:0]count;
output reg q;

always @(posedge clock)
if (!reset)
	count = 5;
else if (count == 0)
	count =5;
else
	count = count - 1;
	
always @(posedge clock)
if(!reset)
	q = 0;
else if(count==0)
	q = 1;
else
	q = 0;

endmodule



module datapath(dir, ldx, ldy, reset, resetReg, selCol, outX, outY, colour, CLOCK, resetCount, countOut, level, level1Col, level2Col, level3Col, teleport);
  
  input dir, ldx, ldy, reset, CLOCK, resetCount, resetReg, teleport;
  input [3:0] selCol;
  input [1:0] level;
  
  wire [7:0] xCarry;
  wire [6:0] yCarry;
  wire [7:0] yCarryLong;
  output wire [2:0] level1Col, level2Col, level3Col;
  wire [2:0] creditsCol;
  wire [7:0] regOutX;
  wire [6:0] regOutY;
  
  
  output reg[14:0] countOut;
  output reg [7:0] outX;
  output reg [6:0] outY;  
  output reg [2:0] colour;

 reg [14:0] ramAddress ;
 
 
 always @ (*)
 ramAddress <= outY * 160 + outX;
  
  
  
  assign yCarry =  yCarryLong[6:0];
  

  reg8bit RegisterX(.d(xCarry),
                         .enable(ldx),
                         .clock(CLOCK), 
                         .reset(resetReg & reset),
                         .q(regOutX),
						 .tp(teleport)
								 );
  
  reg7bit RegisterY(.d(yCarry),
                         .enable(ldy),
                         .clock(CLOCK),  
                    		 .reset(resetReg & reset), //it will reset on either the switch (reset) or the input from the fsm (resetReg)
                         .q(regOutY),
						 .tp(teleport)
								 );
 
  adderSubtractor ASX(.d(regOutX),
                      .q(xCarry),
                      .addsub(dir)
                          );
  
  adderSubtractor ASY(.d({1'b0, regOutY}),
                       .q(yCarryLong),
                       .addsub(dir)
                          );
  
  Level1 Level1RAM(.address(ramAddress),
                   .clock(CLOCK),
                   .data(4'b0000),
                   .wren(0),
                   .q(level1Col) 
                   );
						 
  Level2 Level2RAM(.address(ramAddress ),
                   .clock(CLOCK),
                   .data(4'b0000),
                   .wren(0),
                   .q(level2Col) 
                   );
						 
  Level3 Level3RAM(.address(ramAddress),
                   .clock(CLOCK),
                   .data(4'b0000),
                   .wren(0),
                   .q(level3Col)
                   );
  
   Credits CreditsRAM(.address(ramAddress),
                   .clock(CLOCK),
                   .data(4'b0000),
                   .wren(0),
                    .q(creditsCol) 
                   );
  
      
  
  
always@ (*)
  if(selCol == 3'b000 || selCol == 3'b001)
    begin
      outX <= regOutX;
      outY <= regOutY;
	 end
  else
	begin
    outX = countOut[7:0];
    outY = countOut[14:8];  
	end
	
    

  always @ (posedge CLOCK)

  if(!resetCount)
	  countOut <= 0;
  else if ((selCol != 3'b000)||(selCol != 3'b001)) 
	  countOut <= countOut + 1;

  
  always @ (*)
  begin
    if (selCol == 3'b000)
      colour <= 3'b011; //cyan for deleting    
    else if (selCol == 3'b001)
      colour <= 3'b100; //red
    else if (selCol == 3'b010) //get colour from LEVEL1
      colour <= level1Col;
    else if (selCol == 3'b011) //get colour from LEVEL2
      colour <= level2Col;                                  
    else if (selCol == 3'b100) //get colour from LEVEL3
      colour <= level3Col;
    else if (selCol == 3'b101) //get colour from CREDITS
      colour <= creditsCol;
	 else colour <= 3'b111;
  end
endmodule
  
  


 
module control(L, R, U, D, reset, dir, plot, selCol, ldx, ldy, clock, resetReg, resetCount, countOut, currentLevel, level1Col, level2Col, level3Col, teleport);
	input L, R, U, D, reset, clock;
	input [14:0] countOut;
	input [2:0] level1Col, level2Col, level3Col;
  output reg dir, plot, ldx, ldy, resetReg, resetCount, teleport;
  output reg [2:0] selCol;

  
  
  reg [3:0] currentState, nextState;
  
  output reg [1:0] currentLevel; //To be used when loading the next level (helps pick which state to go to when drawing new level)
  wire delay, delay2, delay3;
   

	  
	  parameter A = 4'b0000, B = 4'b0001, P1 = 4'b0010, LS = 4'b0011, RS = 4'b0100, US = 4'b0101, DS = 4'b0110, Check = 4'b0111, Load1 = 4'b1000, Load2 = 4'b1001, Load3 = 4'b1010, P2 = 4'b1011, Credits = 4'b1100, Start = 4'b1101, Teleport = 4'b1110;
	  
	  timer myTimer(.reset(reset), 
					 .clock(clock),
					 .q(delay));
    timer2 myTimer2(.reset(reset), 
					 .clock(clock),
                    .q(delay2));
						  
 
 

   always @(*)                                        
   case(currentState)
	Start: if(!(L||R||U||D)) nextState = Start;
		else nextState = Load1; 
   A: if(!(L||R||U||D)) nextState = A;
       else nextState = B;
   B: if (delay && (L||R||U||D)) nextState = P1; 
      else nextState = B;
   P1:  if(L) nextState = LS;
     else if(R) nextState = RS;
     else if(U) nextState = US;
     else if(D) nextState = DS;
     else nextState = A;
   LS: nextState = Check;
   RS: nextState = Check;
   US: nextState = Check;
   DS: nextState = Check;
	Check: 
    if(currentLevel == 2'b00 )
		begin
      if(level1Col == 3'b000 && delay2) //If next pixel is black(a wall)
			nextState = Load1; //Reload first level
      else if(level1Col == 3'b100 && delay2) //If next pixel is red(finish)
			nextState = Load2; //Load next level
      else if (level1Col == 3'b011 && delay2) 
      nextState = P2; //Otherwise, draw new pixel
      else nextState = Check;
		end
   else if(currentLevel == 2'b01)
		begin
      if(level2Col == 3'b000 && delay2) //If next pixel is black(a wall)
			nextState = Load1; //Reload first level
      else if(level2Col == 3'b100 && delay2) //If next pixel is red(finish)
			nextState = Load3; //Load next level
      else if (level2Col == 3'b011 && delay2)
			nextState = P2; //Otherwise, draw new pixel
	  else if (level2Col == 3'b110 && delay2)
			nextState = Teleport;
      else nextState = Check;
		end
   else if (currentLevel == 2'b10)
		begin
      if(level3Col == 3'b000 && delay2) //If next pixel is black(a wall)
			nextState = Load1; //Reload first level
      else if(level3Col == 3'b100 && delay2) //If next pixel is red(finish)
			nextState = Credits; //Load next level                              //IN THE END THIS SHOULD LEAD TO A FINISH SCREEN (SPOOKY?)
      else if (level3Col == 3'b011 && delay2) 
      nextState = P2; //Otherwise, draw new pixel
      else nextState = Check;
      end
   else nextState = A;
	 Load1: if(countOut < 32767) nextState = Load1; else nextState = A; 
   Load2: if(countOut < 32767) nextState = Load2; else nextState = A; 
   Load3: if(countOut < 32767) nextState = Load3; else nextState = A; 
   Credits: nextState = Credits;
   P2: nextState = A;
   Teleport: if(delay2) nextState = P2; else nextState = Teleport;
   default: nextState = A;
   endcase
	  
	  
	  
	  
		always @(posedge clock)
		if(!reset)
			currentState = Start;
		else
			currentState = nextState;
			
			 always @(posedge clock)
		case(currentState)
			A:	   begin  ldx = 1'b0; ldy = 1'b0; plot = 1'b0; selCol = 3'b001; resetReg = 1'b1; teleport = 1'b0; end           //FIX SELCOL
			
			B:	 	 begin  ldx = 1'b0; ldy = 1'b0; plot = 1'b0; selCol = 3'b000; resetReg = 1'b1; teleport = 1'b0; end
			
			P1:  	 begin  ldx = 1'b0; ldy = 1'b0; plot = 1'b1; selCol = 3'b000; dir = 1'b0; resetCount = 1'b0; resetReg = 1'b1; teleport = 1'b0; end //TEST CODE RESETCOUNTTTTTTTTTTTTTTT
			
			LS: 	 begin  ldx = 1'b1; ldy = 1'b0; plot = 1'b0; selCol = 3'b001; dir = 1'b0; resetReg = 1'b1; teleport = 1'b0; end 
			
			RS: 	 begin  ldx = 1'b1; ldy = 1'b0; plot = 1'b0; selCol = 3'b001; dir = 1'b1; resetReg = 1'b1; teleport = 1'b0; end
			
			US: 	 begin  ldx = 1'b0; ldy = 1'b1; plot = 1'b0; selCol = 3'b001; dir = 1'b0; resetReg = 1'b1; teleport = 1'b0; end
			
			DS: 	 begin  ldx = 1'b0; ldy = 1'b1; plot = 1'b0; selCol = 3'b001; dir = 1'b1; resetReg = 1'b1; teleport = 1'b0; end
      
         Check: begin  ldx = 1'b0; ldy = 1'b0; plot = 1'b0; resetCount = 1'b0; resetReg = 1'b1; teleport = 1'b0; end //RESET THE LOADSCREEN COUNTER IN THIS STATE
        
			Load1: begin  ldx = 1'b0; ldy = 1'b0; plot = 1'b1; selCol = 3'b010; resetCount = 1'b1; resetReg = 1'b0; currentLevel = 2'b00; teleport = 1'b0; end
        
			Load2: begin  ldx = 1'b0; ldy = 1'b0; plot = 1'b1; selCol = 3'b011; resetCount = 1'b1; resetReg = 1'b1; currentLevel = 2'b01; teleport = 1'b0; end
        
			Load3: begin  ldx = 1'b0; ldy = 1'b0; plot = 1'b1; selCol = 3'b100; resetCount = 1'b1; resetReg = 1'b1; currentLevel = 2'b10; teleport = 1'b0; end
      
         Credits: begin  ldx = 1'b0; ldy = 1'b0; plot = 1'b1; selCol = 3'b101; resetCount = 1'b1; resetReg = 1'b1; currentLevel = 2'b10; teleport = 1'b0; end
			
			Start: begin  ldx = 1'b0; ldy = 1'b0; plot = 1'b0; selCol = 3'b001; resetCount = 1'b0; resetReg = 1'b1; teleport = 1'b0; end  
			
			P2: 	 begin  ldx = 1'b0; ldy = 1'b0; plot = 1'b1; selCol = 3'b001; dir = 1'b0; teleport = 1'b0; end
			
			Teleport:  begin ldx = 1'b1; ldy = 1'b1; plot = 1'b0; resetReg = 1'b1; currentLevel = 2'b01; teleport = 1'b1; end
			
			default: begin  ldx = 1'b0; ldy = 1'b0; plot = 1'b0; selCol = 3'b000; dir = 1'b0; teleport = 1'b0; end
			
		endcase
  
endmodule
