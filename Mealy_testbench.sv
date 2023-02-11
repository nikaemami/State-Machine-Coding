`timescale 1ns/1ns
module Mealy_tb();
	reg clk=0,rst=0,jj=1;
	wire ww,w;
	Mealy_v CUT3(clk,rst,jj,ww);
	Mealy CUT4(clk,rst,jj,w);
	always #20 clk <= ~clk;
	initial begin
	#80 jj=0;
	#80 jj=1;
	#40 jj=0;
	#400 rst=1;
	#80 jj=0;
	#80 jj=1;
	#40 jj=0;
	#400 $stop;
	end
endmodule