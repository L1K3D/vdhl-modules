# VHDL Logic Circuits Project

This repository contains a collection of digital logic circuits implemented using **VHDL (VHSIC Hardware Description Language)**. Each circuit explores different combinations of logical operations and structural compositions, aiming to model and simulate digital systems at a behavioral level.

## 📘 Overview

The project consists of four individual circuits (`circuito_1` to `circuito_4`), each described using VHDL and structured following a clean, modular, and reusable approach. All designs are based on **combinational logic**, using input signals, intermediate wires (inout ports), and a single output signal.

The circuits were developed for educational and experimental purposes, demonstrating how basic logic operations can be systematically organized into more complex structures. These examples can be used as a foundation for further digital design, FPGA programming, or logic optimization studies.

---

## 🧠 Circuits Description

### 1. `circuito_1.vhd`
This circuit introduces a sequence of basic logical operations including **AND**, **OR**, and **NOT**, combined in a multi-stage structure. It computes intermediate terms (`t1` to `t5`) and uses both original and negated signals to produce a single output `s`.  
It is a good introductory example of signal propagation and inversion handling in VHDL.

### 2. `circuito_2.vhd`
This is a more elaborate combinational circuit divided into **three computation columns**:
- **First column**: Generates fundamental intermediate signals based on logical relations between the inputs.  
- **Second column**: Combines the first column results through OR and AND operations to refine the logical behavior.  
- **Third column**: Produces final intermediate values before deriving the output.  

The circuit emphasizes hierarchical logic construction and the use of signal negation to achieve complex Boolean expressions.

### 3. `circuito_3.vhd`
This circuit explores **input negation**, **multi-branch logical conditions**, and the structured propagation of intermediate terms through multiple layers:
- Negated forms of `a` and `c` are generated and used in subsequent operations.
- Multiple logic levels are combined to create intricate Boolean relations.
- The final output is obtained by inverting the result of a combined OR expression.  

This module is particularly useful for understanding the role of **complemented signals** and their impact on multi-level logic design.

### 4. `circuito_4.vhd`
The fourth circuit focuses on **complementary pair operations** between input signals `a` and `b`, followed by integration with `c` and `d`.  
Key aspects include:
- Detection of exclusive input conditions using AND and NOT.
- Intermediate combination with OR and further inversion to refine the final logic.
- A concise structure that demonstrates how small logical building blocks can yield complex behaviors.

---

## 🧰 Technologies & Tools

- **Language:** VHDL (IEEE STD_LOGIC_1164)  
- **Architecture:** Behavioral  
- **Design Style:** Combinational logic using inout signals for intermediate wires  
- **Tools Used:** Any VHDL-compatible simulator (e.g., Xilinx ISE, ModelSim, Vivado)

---

## 🧪 How to Simulate

To simulate the circuits:

1. Import the `.vhd` files into your preferred VHDL development environment.  
2. Create corresponding **testbenches** (not included in this repository by default) for each circuit.  
3. Compile and run the simulation.  
4. Observe the signal transitions on waveforms to verify the logical behavior.

Example using ModelSim:
```bash
vcom circuito_1.vhd
vsim work.circuito_1
