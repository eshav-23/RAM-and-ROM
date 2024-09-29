# RAM-and-ROM
RAM and ROM is designed and implemented in Verilog. we have designed a single port RAM, dual port RAM and a ROM.

## Installation

This Verilog code is implemented in XILINX Vivado.

## Usage

1. Clone the repository to your local machine:
    
    ```
    git clone <https://github.com/eshav-23/RAM-and-ROM.git>
    
    ```
    
2. Open XILINX Vivado and create a new project.
3. Add the Verilog source files from the cloned repository to your project.
4. Synthesize and implement the design.

## FEATURES
1.In single port ram  only one read or write operation can be performed at a time due to a single address and data bus.
2.Dual port RAM supports two simultaneous memory operations (either two reads, two writes, or one read and one write), each through separate address and data buses.
3.in ROM module data is permanently programmed and cannot be modified during runtime.
