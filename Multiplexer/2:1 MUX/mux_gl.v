module mux_gl(a, b, s, y);
	input a,b,s;
	output y;
	wire q1,q2,sbar;
	// <gate_name> <optional_name>(output net, input_net1,input_net2,...)
	not n1(sbar, s);
	and a1(q1, sbar, a);
	and a2(q2, s, b);
	or o1(y, q1, q2);
endmodule
