//--------PDSD homework 1-2 (Voting circuit)---------------------------------------------
//--------Testbench----------------------------------------------------------------------

`include "Voting.v"

module Voting_tb;
	reg [2:0] a,b,c,d,e;
	wire [2:0] winner;
	
	Voting uut(.a(a),.b(b),.c(c),.d(d),.e(e),.winner(winner));
	initial begin
		a = 3'b100; b = 3'b100; c = 3'b001; d = 3'b100; e = 3'b010;
		#5 a = 3'b010; b = 3'b010; c = 3'b100; d = 3'b100; e = 3'b010;
		#5 a = 3'b100; b = 3'b001; c = 3'b001; d = 3'b001; e = 3'b001;
		#5 a = 3'b010; b = 3'b001; c = 3'b100; d = 3'b100; e = 3'b010;
		#5 a = 3'b001; b = 3'b001; c = 3'b100; d = 3'b100; e = 3'b010;
		#5 a = 3'b010; b = 3'b100; c = 3'b001; d = 3'b010; e = 3'b001;
		#5 a = 3'b100; b = 3'b100; c = 3'b100; d = 3'b100; e = 3'b100;
		#5 a = 3'b010; b = 3'b010; c = 3'b010; d = 3'b010; e = 3'b010;
		#5 a = 3'b001; b = 3'b001; c = 3'b001; d = 3'b001; e = 3'b001;
		#5 $finish;
	end
	
	initial
	$monitor($time,"a=%b b=%b c=%b d=%b e=%b winner=%b\n",a,b,c,d,e,winner);

	initial begin
		$dumpfile("Voting_wave.vcd");
		$dumpvars;
	end
endmodule
