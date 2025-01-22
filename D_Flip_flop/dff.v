module dff( q, d, clk, enable);
    input d, clk,enable;
    output reg q;
	 
	 wire gtd_clk = enable&&clk;
	 
	 always @(posedge gtd_clk)
		if (enable)
			q <= d;
			
endmodule
