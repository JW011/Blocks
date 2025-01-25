module mux_df(a, b, s, y);
	input a,b,s;
	output y;
	wire sbar;
	assign y = ( a & sbar )|( b & s );
	assign sbar = ~s;
endmodule

module mux_4_1_hm(a1, a2, a3, a4, s, y);
	input a1, a2, a3, a4;
	input [1:0] s;
	output y;
	
	wire t1, t2;
	
	mux_df m1(a1, a2, s[0], t1);
	mux_df m2(a3, a4, s[0], t2);
	mux_df m3(t1, t2, s[1], y);
	
endmodule
