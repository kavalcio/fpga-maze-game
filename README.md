# FPGA Maze Game

This is a maze traversal game built using Verilog code meant to be run on a field-programmable gate array (FPGA), specifically the Altera DE1-SoC board. The goal of the game is to traverse a maze and get to the finish line without coming into contact with any walls while controlling a constantly-moving player character.

This design process involved:
• Designing a finite state machine (FSM) representing interactions between the different states of the game
• Creating I/O modules for user input and image output to the display
• Testing code functionality using a simulation via ModelSim
• Launching project onto a live FPGA using Quartus Prime
