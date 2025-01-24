module mux_df(a, b, s, y);
	input a,b,s;
	output y;
	wire sbar;
	assign y = ( a & sbar )|( b & s );
	assign sbar = ~s;
endmodule
