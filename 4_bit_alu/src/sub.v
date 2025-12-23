module sub(input [3:0] A, B,
           output reg [7:0] result);

    always @(*) begin
        if (A < B)
            result = (A + 16) - B;
        else
            result = A - B;
    end
endmodule
