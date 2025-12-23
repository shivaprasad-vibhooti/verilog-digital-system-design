module left_rotate(input [3:0] A, B,
                   output reg [7:0] result);

    reg [3:0] temp;
    always @(*) begin
        case(B[1:0])
            2'd0: temp = A;
            2'd1: temp = {A[2:0], A[3]};
            2'd2: temp = {A[1:0], A[3:2]};
            2'd3: temp = {A[0], A[3:1]};
        endcase
        result = {4'b0000, temp};
    end
endmodule
