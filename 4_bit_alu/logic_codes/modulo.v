module modulo(input [3:0] A, B,
              output reg [7:0] result);

    always @(*) begin
        if (B == 0)
            result = 8'hFF;
        else
            result = {4'b0000, (A % B)};
    end
endmodule
