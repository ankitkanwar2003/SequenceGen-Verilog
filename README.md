# SequenceGen-Verilog

This repository contains a Verilog implementation of a sequence generator. The project was completed as an assignment for the ELL201 course on Digital Electronics offered by IIT Delhi, Delhi, India, under the guidance of Prof. Manan Suri and Prof. Dhiman Mallick.

## Project Description

The sequence generator is implemented using a Moore Finite State Machine (FSM), where the output depends on the current state of the FSM and not on the input. The sequence to be generated is determined by the states of the FSM.

The project utilizes three D flip-flops (A, B, and C) to represent the states of the FSM. The flip-flops' outputs (QA, QB, QC) determine the current state. The FSM transition table indicates the relationship between the current state and the next state based on the input X.

The Verilog implementation includes a module for a D flip-flop and a module for the sequence generator. The D flip-flop module is positive edge-triggered and uses minimized Sum of Products (SoP) expressions as inputs. The sequence generator module instantiates the D flip-flops and assigns the output Y based on the current state and input X at the positive edge of the clock.

A testbench is provided to simulate the waveform behavior of the sequence generator. The waveform shows the generated sequence based on the input X and the transitions between different states of the FSM.

## Repository Contents

- `d_flip_flop.v`: Verilog module for a positive edge-triggered D flip-flop.
- `sequence_generator.v`: Verilog module implementing the sequence generator using D flip-flops.
- `project_tb.v`: Verilog testbench code for simulating the sequence generator.
- `README.md`: Project description and repository details.

## Usage

To use the sequence generator in your own Verilog projects, follow these steps:

1. Instantiate the `sequence_generator` module in your Verilog design.
2. Provide the necessary inputs, including `x` (input signal) and `clk` (clock signal).
3. Connect the `y` output to the desired circuit or assign it to an output pin.
4. Simulate the design using the provided testbench `project_tb.v` or modify it to suit your specific testing requirements.
5. Synthesize and implement the design on a suitable hardware platform (e.g., CPLD board) to observe its functionality in a physical environment.

## Note

The code provided in this repository was implemented and demonstrated on a CPLD board during the course. The Verilog implementation has been shown to work as expected based on the simulated waveforms and circuit diagram analysis.

Please note that this is a summary of the project report, and the actual Verilog code and implementation details can be found in the respective files in the repository.

For any further information or clarification, refer to the original project report.
