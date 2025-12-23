4-Bit Arithmetic Logic Unit (ALU) – Verilog HDL
📌 Project Overview

This project implements a fully modular 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL.
The ALU is designed to perform a wide range of arithmetic, logical, and bit-rotation operations.
Each operation is implemented as a separate Verilog module, making the design easy to understand, test, and extend.

All functional modules are integrated into a top-level ALU module that selects the required operation based on an opcode.

The design has been verified using a dedicated testbench and simulated using Xilinx Vivado.

⚙️ Features

The ALU supports the following operations:

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

🔄 Bitwise Rotation

Left Rotation

Right Rotation

🧩 Modular Design Structure

Each operation is implemented as a separate Verilog module, improving readability and reusability.

4_bit_alu/
├── alu_top.v        # Top-level ALU module (opcode based selection)
├── adder.v          # Addition module
├── subtractor.v     # Subtraction module
├── multiplier.v     # Multiplication module
├── divider.v        # Division module
├── modulo.v         # Modulo operation
├── logic_unit.v     # AND, OR, XOR, NOT operations
├── rotate_left.v    # Left rotation module
├── rotate_right.v   # Right rotation module
├── alu_tb.v         # Testbench for ALU verification
├── README.md        # Project documentation
└── LICENSE

🧠 Top-Level Module

The alu_top.v module acts as the control unit of the ALU.

Accepts two 4-bit inputs (A, B)

Uses an opcode to select the desired operation

Outputs the result of the selected operation

Opcode-Based Operation Selection
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

(Opcodes can be customized as needed.)

🧪 Testbench & Simulation

Testbench File: alu_tb.v

The testbench applies various input combinations and opcodes

Verifies correctness of all ALU operations

Simulation performed using Xilinx Vivado

🛠 Tools Used

Hardware Description Language: Verilog HDL

Simulation Tool: Xilinx Vivado

🚀 How to Run the Project

Open Xilinx Vivado

Create a new RTL project

Add all .v files to the project

Set alu_top.v as the top module

Add alu_tb.v as simulation source

Run behavioral simulation

📈 Future Enhancements

Extend ALU width (8-bit / 16-bit)

Add shift operations

Include status flags (Zero, Carry, Overflow)

FPGA implementation
