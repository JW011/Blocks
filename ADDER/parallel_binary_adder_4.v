module fa( A, B, Cin, SUM, Cout);
    input A, B, Cin;
    output SUM, Cout;
    assign SUM = (( A ^ B ) ^ Cin );
    assign Cout = (( A & B)|( B & Cin )|( A & Cin ));
endmodule

module parallel_binary_adder(SUM,Cout,A,B,Cin);
output [3:0] SUM;
output [3:0] Cout;
input [3:0] A,B;
input Cin = 1'b0;

fa(A[0], B[0], Cin, SUM[0], Cout[0]);
fa(A[1], B[1], Cout[0], SUM[1], Cout[1]);
fa(A[2], B[2], Cout[1], SUM[2], Cout[2]);
fa(A[3], B[3], Cout[2], SUM[3], Cout[3]);

endmodule
