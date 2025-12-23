🔷 4-Bit Arithmetic Logic Unit (ALU) – Verilog HDL
🧾 Project Overview

This project implements a fully modular 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL.
The ALU is capable of performing a wide range of arithmetic, logical, and bit-rotation operations.

Each operation is designed as an independent Verilog module, making the system easy to understand, debug, and extend.
All modules are integrated into a top-level module (alu_top.v), which selects the required operation based on an opcode.

The design is verified using a dedicated testbench and simulated in Xilinx Vivado.

⚙️ Supported Operations
🔢 Arithmetic Operations

Addition

Subtraction

Multiplication

Division

Modulo

🔣 Logical Operations

AND

OR

XOR

NOT

🔄 Bitwise Rotation Operations

Left Rotation

Right Rotation

🧩 Modular Design Architecture

Each ALU function is implemented as a separate Verilog module to ensure modularity and reusability.

4_bit_alu/
├── alu_top.v        # Top-level module (opcode-based selection)
├── adder.v          # Addition module
├── subtractor.v     # Subtraction module
├── multiplier.v     # Multiplication module
├── divider.v        # Division module
├── modulo.v         # Modulo operation
├── logic_unit.v     # AND, OR, XOR, NOT
├── rotate_left.v    # Left rotation
├── rotate_right.v   # Right rotation
├── alu_tb.v         # Testbench
├── README.md        # Documentation
└── LICENSE

🧠 Top-Level Module (alu_top.v)

The alu_top.v file acts as the control unit of the ALU.

Accepts two 4-bit inputs (A and B)

Uses an opcode to select the operation

Outputs the computed result

📟 Opcode Mapping (Example)
Opcode	Operation
0000	Addition
0001	Subtraction
0010	Multiplication
0011	Division
0100	Modulo
0101	AND
0110	OR
0111	XOR
1000	NOT
1001	Left Rotation
1010	Right Rotation
🧪 Testbench & Verification

Testbench File: alu_tb.v

Applies multiple test vectors for all operations

Verifies correctness of outputs for each opcode

Simulated using Xilinx Vivado

🛠 Tools & Technologies

Hardware Description Language: Verilog HDL

Simulation Tool: Xilinx Vivado

🚀 How to Run the Project

Open Xilinx Vivado

Create a new RTL project

Add all .v source files

Set alu_top.v as the top module

Add alu_tb.v as the simulation source

Run Behavioral Simulation

📈 Future Enhancements

Extend ALU to 8-bit / 16-bit

Add shift operations

Include status flags (Carry, Zero, Overflow)

FPGA implementation
