module mux_df(a, b, s, y);
	input a,b,s;
	output y;
	assign y = ( s == 0 )? a : b;
endmodule
