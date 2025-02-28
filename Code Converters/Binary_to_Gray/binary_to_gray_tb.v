`timescale 1ns / 1ps
module binary_to_gray_tb;
    reg [3:0] test_vector;
    reg [3:0] i;
    wire [3:0] G;
    
    binary_to_gray utt ( .A(test_vector), .G(G));
    
    initial begin
        for( i = 4'b0000; i <= 4'b1111; i = i + 1) begin
            #50;
            test_vector = i;
        end
    end
endmodule
