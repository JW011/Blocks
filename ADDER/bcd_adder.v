
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
input Cin;

fa a1(A[0], B[0], Cin, SUM[0], Cout[0]);
fa a2(A[1], B[1], Cout[0], SUM[1], Cout[1]);
fa a3(A[2], B[2], Cout[1], SUM[2], Cout[2]);
fa a4(A[3], B[3], Cout[2], SUM[3], Cout[3]);

endmodule

module bcd_adder( A, B, Cin, Cout, S, dont_care);
    input [3:0] A, B;
    input Cin;
    output [3:0] S;
    output Cout;
    output dont_care;
    
    wire cout;
    wire [3:0] s;

    parallel_binary_adder add1(s, cout, A, B, Cin);
 
    assign Cout = ((s[3] & s[2])|(s[3]& s[1]));
    
    parallel_binary_adder add2(S, dont_care, s, {1'b0, Cout, Cout, 1'b0});
    
endmodule
