module odd_parity_gl(
    input [3:0] A, output odd_parity
    );
    
    wire w1,w2,w3;
    
    xnor xn1(w1, A[0], A[1]);
    xnor xn2(w2, w1, A[2]);
    xnor xn3(w3, w2, A[3]);
    not n1(odd_parity,w3);
    
endmodule
