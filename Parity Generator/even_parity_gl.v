module even_parity_gen_gl(
    input [3:0] A, output even_parity
    );
    
    wire w1,w2;
    
    xnor xn1(w1, A[0], A[1]);
    xnor xn2(w2, w1, A[2]);
    xnor xn3(even_parity, w2, A[3]);
    
endmodule
