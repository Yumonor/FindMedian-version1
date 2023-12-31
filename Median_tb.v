//--------PDSD homework 1-2 (Median circuit)---------------------------------------------
//--------Median Testbench---------------------------------------------------------------

`include "Median.v"

module Median_tb;
	reg [7:0] a,b,c;
	wire [7:0] median;
	
	Median uut(.a(a),.b(b),.c(c),.median(median));
	
	initial begin
		a = 8'b00100000; b = 8'b10000000; c = 8'b00000100;
		#5 a = 8'b00010000; b = 8'b00000010; c = 8'b01000000;
		#5 a = 8'b01000000; b = 8'b00100000; c = 8'b10000000;
		#5 a = 8'b10000000; b = 8'b00010000; c = 8'b00000010;
		#5 a = 8'b00000100; b = 8'b00000010; c = 8'b00000001;
		#5 a = 8'b00000001; b = 8'b00001000; c = 8'b00100000;
		#5 a = 8'b00000010; b = 8'b01000000; c = 8'b00010000;
		#5 a = 8'b00000001; b = 8'b10000000; c = 8'b00100000;
		#5 a = 8'b01000000; b = 8'b00000010; c = 8'b00001000;
		#5 $finish;
	end
	
	initial
	$monitor($time,"a=%b b=%b c=%b medain=%b \n",a,b,c,median);
	
	initial begin
		$dumpfile("Median_wave.vcd");
		$dumpvars;
	end
	
endmodule