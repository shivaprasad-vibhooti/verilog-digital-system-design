module alu_top(
    input [3:0] A, B,
    input [2:0] opcode,
    input [1:0] logic_sel,
    output reg [7:0] result
);

    wire [7:0] add_out, sub_out, logic_out, div_out;
    wire [7:0] mul_out, lrot_out, rrot_out, mod_out;

    // Module Instantiations
    add         ADD (A, B, add_out);
    sub         SUB (A, B, sub_out);
    logic_unit  LU  (A, B, logic_sel, (opcode == 3'b010), logic_out); // ✅ Active only for opcode 010
    div_unit    DIV (A, B, div_out);
    mul         MUL (A, B, mul_out);
    left_rotate LRT (A, B, lrot_out);
    right_rotate RRT(A, B, rrot_out);
    modulo      MOD (A, B, mod_out);

    // Output Selection Based on Opcode
    always @(*) begin
        case(opcode)
            3'b000: result = add_out;     // ADD
            3'b001: result = sub_out;     // SUB
            3'b010: result = logic_out;   // LOGIC (AND/OR/XOR)
            3'b011: result = div_out;     // DIV
            3'b100: result = mul_out;     // MUL
            3'b101: result = lrot_out;    // LEFT ROTATE
            3'b110: result = rrot_out;    // RIGHT ROTATE
            3'b111: result = mod_out;     // MOD
            default: result = 8'h00;
        endcase
    end

endmodule
