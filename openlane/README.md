# 8-bit ALU Physical Design

## 1. Introduction

This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL.

The project focuses on the complete digital design and open-source ASIC Physical Design flow, from RTL design and simulation to synthesis, placement, routing, and GDSII generation.

## 2. Features

The ALU supports the following operations:

| Opcode | Operation |
|--------|-----------|
| 4'h1   | Addition |
| 4'h2   | Subtraction |
| 4'h3   | Multiplication |
| 4'h4   | Division |
| 4'h5   | Shift Right |
| 4'h6   | Shift Left |
| 4'h7   | Logical AND |
| 4'h8   | Logical OR |
| 4'h9   | Bitwise AND |
| 4'hA   | Bitwise OR |
| 4'hB   | XOR |

## 3. Project Structure

```text
8bit-ALU/
├── rtl/
│   └── alu.v
│
├── tb/
│   └── alu_tb.v
│
├── config.json
│
└── README.md