# NEW-SOL
# Project Smart Contract

This is a simple Solidity smart contract created to practice and understand core Solidity concepts such as variables, structs, arrays, mappings, and functions.

The contract allows basic arithmetic operations and stores information about people on the blockchain.

## Features

### 🔢 Number Operations
- Store two numbers on-chain
- Perform:
  - Addition
  - Subtraction
  - Multiplication
  - Division (with safety check for division by zero)

### 👤 People Management
- Store people using a `struct`
- Save each person's:
  - Name
  - Age
  - Favorite number
- Store people in an array
- Use mappings for fast lookup:
  - Name → Age
  - Name → Favorite Number

## Smart Contract Details

### Solidity Version
```solidity
pragma solidity ^0.8.13;
