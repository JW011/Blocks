module fa( A, B, Cin, SUM, Cout);
    input A, B, Cin;
    output SUM, Cout;
    assign SUM = (( A ^ B ) ^ Cin );
    assign Cout = (( A & B)|( B & Cin )|( A & Cin ));
endmodule

module mode_control(S,Cout,A,B,Cin,ctrl);
    output [3:0] S,Cout;
    input [3:0] A,B;
    input Cin, ctrl;
    
    fa a1(A[0], B[0]^ctrl, ctrl, S[0], Cout[0]);
    fa a2(A[1], B[1]^ctrl, Cout[0], S[1], Cout[1]);
    fa a3(A[2], B[2]^ctrl, Cout[1], S[2], Cout[2]);
    fa a4(A[3], B[3]^ctrl, Cout[2], S[3], Cout[3]);
    
endmodule 
