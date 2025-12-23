4-BIT ARITHMETIC LOGIC UNIT (ALU) – VERILOG HDL
1. INTRODUCTION

This project presents the design and implementation of a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL.
The ALU is a fundamental component of digital processors and is responsible for performing arithmetic and logical operations.

This design follows a fully modular approach, where each operation is implemented as a separate Verilog module for clarity, scalability, and ease of testing.

2. PROJECT OBJECTIVE

The main objectives of this project are:

To design a modular 4-bit ALU using Verilog HDL

To implement arithmetic, logical, and rotational operations

To integrate all modules using a top-level control module

To verify the functionality using a testbench and simulation

3. FEATURES & OPERATIONS
3.1 Arithmetic Operations

Addition

Subtraction

Multiplication

Division

Modulo

3.2 Logical Operations

AND

OR

XOR

NOT

3.3 Rotational Operations

Left Rotation

Right Rotation

4. DESIGN METHODOLOGY

The ALU is designed using a hierarchical and modular structure:

Each operation is implemented as an independent Verilog module

A top-level module selects the operation based on an opcode

The design ensures reusability and easy debugging

5. PROJECT STRUCTURE
4_bit_alu/
│
├── alu_top.v        → Top-level ALU module
├── adder.v          → Addition module
├── subtractor.v     → Subtraction module
├── multiplier.v     → Multiplication module
├── divider.v        → Division module
├── modulo.v         → Modulo module
├── logic_unit.v     → AND, OR, XOR, NOT operations
├── rotate_left.v    → Left rotation
├── rotate_right.v   → Right rotation
├── alu_tb.v         → Testbench
├── README.md        → Documentation
└── LICENSE

6. TOP-LEVEL MODULE DESCRIPTION (alu_top.v)

The alu_top.v module acts as the control and integration unit of the ALU.

Accepts two 4-bit inputs (A, B)

Uses an opcode to select the desired operation

Outputs the corresponding result

Opcode Selection Table
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
7. TESTBENCH & VERIFICATION

Testbench File: alu_tb.v

Applies multiple input combinations and opcodes

Verifies correctness of each ALU operation

Simulation performed using Xilinx Vivado

8. TOOLS & TECHNOLOGIES USED

Hardware Description Language: Verilog HDL

Simulation Tool: Xilinx Vivado

9. RESULTS

The simulation results confirm that the ALU performs all arithmetic, logical, and rotational operations correctly according to the selected opcode.

10. FUTURE ENHANCEMENTS

Extend ALU to 8-bit / 16-bit

Add shift operations

Introduce status flags (Carry, Zero, Overflow)

FPGA implementation
