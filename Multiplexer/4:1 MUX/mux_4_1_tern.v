endmodule

module mux(y, a, b, c, d, select);
	input a, b, c, d;
	input [1:0] select;
	output reg y;
	
	always @(a or b or c or d or select)
		y = (select[1] ? select[0] ? a : b : select[0] ? c : d);
endmodule
