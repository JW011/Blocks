module mux_bh(a, b, s, y);
	input a,b,s;
	output reg y;
	always @ ( s or a or b )
		begin 
			if ( s == 0 )
				y = a;
			else 
				y = b;
		end 
endmodule
