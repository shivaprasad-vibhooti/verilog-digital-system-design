module logic_unit(input [3:0] A, B,
                  input [1:0] sel,
                  input opcode_en,
                  output reg [7:0] result);

    always @(*) begin
        if (opcode_en) begin  // ✅ Only active for opcode 010
            case(sel)
                2'b01: result = {4'b0000, (A & B)};
                2'b10: result = {4'b0000, (A | B)};
                2'b11: result = {4'b0000, (A ^ B)};
                default: result = 8'h00;
            endcase
        end
        else
            result = 8'h00;  // ✅ logic line OFF for any other opcode
    end
endmodule
