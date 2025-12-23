# 4-BIT ARITHMETIC LOGIC UNIT (ALU) – VERILOG HDL
## INTRODUCTION
An **Arithmetic Logic Unit (ALU)** is a core component of digital systems and processors.  
It is responsible for performing arithmetic, logical, and bitwise operations.
This project implements a **fully modular 4-bit Arithmetic Logic Unit (ALU)** using **Verilog HDL**.  
The design follows a **hierarchical and modular approach**, where each operation is implemented as a separate Verilog module.
The ALU is verified using a **dedicated testbench**, and simulations are carried out using **Xilinx Vivado**.
## PROJECT OBJECTIVE
The objectives of this project are:
- To design a **modular 4-bit ALU**
- To implement **arithmetic, logical, and rotational operations**
- To select operations using an **opcode-based control mechanism**
- To verify functionality using **testbench simulation**
## WORKING PRINCIPLE
- The ALU accepts two **4-bit inputs**: `A` and `B`
- An **opcode** is used to select the desired operation
- Based on the opcode:
  - The corresponding operation module is enabled
  - The result is routed to the output
- All operation modules are integrated into a **top-level module (`alu_top.v`)**

This design approach improves **readability**, **debugging**, and **future scalability**.
## SUPPORTED OPERATIONS
### Arithmetic Operations
- Addition
- Subtraction
- Multiplication
- Division
- Modulo
### Logical Operations
- AND
- OR
- XOR
- NOT
### Rotational Operations
- Left Rotation
- Right Rotation
## OPCODE SELECTION TABLE

The ALU operation is selected using an **opcode input**.

| Opcode | Operation        | Description                         |
|------|------------------|-------------------------------------|
| 0000 | ADD              | A + B                               |
| 0001 | SUB              | A − B                               |
| 0010 | MUL              | A × B                               |
| 0011 | DIV              | A ÷ B                               |
| 0100 | MOD              | A % B                               |
| 0101 | AND              | Bitwise AND                         |
| 0110 | OR               | Bitwise OR                          |
| 0111 | XOR              | Bitwise XOR                         |
| 1000 | NOT              | Bitwise NOT (on A)                  |
| 1001 | LEFT ROTATION    | Left rotate input A                 |
| 1010 | RIGHT ROTATION   | Right rotate input A                |

*(Opcode values can be modified as required.)*

---

## VERIFICATION AND TESTBENCH

- **Testbench File:** `alu_tb.v`
- Applies multiple test cases with different opcodes
- Verifies correctness of arithmetic, logical, and rotational operations
- Ensures expected output behavior for all ALU functions

---

## SIMULATION ENVIRONMENT

- **Simulation Tool:** Xilinx Vivado
- Behavioral simulation is performed
- Output waveforms are analyzed to validate results
## HOW TO RUN THE PROJECT
### Requirements
- Xilinx Vivado (any recent version)
### Simulation Steps
1. Launch **Xilinx Vivado**
2. Create a new **RTL Project**
3. Add all Verilog source files (`.v`)
4. Set `alu_top.v` as the **Top Module**
5. Add `alu_tb.v` as a **Simulation Source**
6. Run **Behavioral Simulation**
7. Observe outputs in the waveform viewer
## RESULTS
The simulation results confirm that the ALU performs all operations correctly according to the selected opcode.
## FUTURE ENHANCEMENTS
- Extend ALU design to **8-bit / 16-bit**
- Add **shift operations**
- Implement **status flags** (Carry, Zero, Overflow)
- FPGA hardware implementation
## CONCLUSION
This project demonstrates a **clean and modular implementation of a 4-bit ALU** using Verilog HDL.  
The opcode-based design and modular structure make the ALU suitable for learning and further extension.




