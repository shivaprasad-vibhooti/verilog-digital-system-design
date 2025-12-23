`timescale 1ns/1ps
module alu_tb;

    reg [3:0] A, B;
    reg [2:0] opcode;
    reg [1:0] logic_sel;
    wire [7:0] result;

    alu_top UUT(A, B, opcode, logic_sel, result);

    initial begin
        $monitor("T=%0t A=%h B=%h opcode=%b logic_sel=%b result=%h",
                  $time, A, B, opcode, logic_sel, result);

        // ADD
        A=4'h3; B=4'h4; opcode=3'b000;logic_sel=2'b00; #10;

        // SUB (includes 2-5 borrow case style)
        A=4'h2; B=4'h5; opcode=3'b001;logic_sel=2'b00; #10;

        // LOGIC (AND/OR/XOR)
        A=4'hA; B=4'h3; opcode=3'b010; logic_sel=2'b01; #10;  // AND
        logic_sel=2'b01; #10;                                 // OR
        logic_sel=2'b10; #10;                                 // XOR
        logic_sel=2'b11; #10;                                 // zero

        // DIV
        A=4'h8; B=4'h2; opcode=3'b011; logic_sel=2'b00;#10;
        A=4'h5; B=4'h0; opcode=3'b011;logic_sel=2'b00; #10;                   // 0xFF

        // MUL
        A=4'hF; B=4'hF; opcode=3'b100;logic_sel=2'b00; #10;

        // LEFT ROTATE
        A=4'b1101; B=4'b0001; opcode=3'b101; logic_sel=2'b00;#10;
        A=4'b1101; B=4'b0010; opcode=3'b101;logic_sel=2'b00; #10;

        // RIGHT ROTATE
        A=4'b1101; B=4'b0001; opcode=3'b110;logic_sel=2'b00; #10;
        A=4'b1101; B=4'b0011; opcode=3'b110;logic_sel=2'b00; #10;

        // MOD
        A=4'h9; B=4'h4; opcode=3'b111; logic_sel=2'b00;#10;
        A=4'h9; B=4'h0; opcode=3'b111;logic_sel=2'b00; #10;

        $finish;
    end
endmodule
