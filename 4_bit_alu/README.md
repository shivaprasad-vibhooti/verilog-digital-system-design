This project implements a fully modular Arithmetic Logic Unit (4_bit_ALU) using Verilog HDL.
The ALU performs a wide variety of arithmetic, logical, and rotational operations using separate Verilog modules, such as:

1.Addition
2.Subtraction
3.Multiplication
4.Division
5.Modulo
6.Logical operations (AND, OR, XOR, NOT)
7.Left rotation
8.Right rotation

All modules are integrated into a top-level file (alu_top.v) which selects the required operation based on an opcode.
The design is tested using a dedicated testbench (alu_tb.v) and the simulation is performed in Xilinx Vivado.
