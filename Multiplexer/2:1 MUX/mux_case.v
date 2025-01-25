module mux_case(a, b, s, y);
	input a,b,s;
	output reg y;
	
	always @ ( s or a or b )
		begin 
			case(s)
				0: y = a;
				1: y = b;
			endcase
		end 
endmodule
