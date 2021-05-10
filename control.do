# set the working dir, where all compiled verilog goes
vlib work


# could also have multiple verilog files
vlog MazeGame.v 

#load simulation using mux as the top level simulation module
vsim control

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}

# write to 1111 to 5_bit reg and 00000 to 4 bit register
#set input values using the force command, signal names need to be in {} brackets
force {reset} 0
run 20ns

force {reset} 1
force {clock} 1    
#run simulation for a few ns
run 20ns

force {R} 0
force {L} 1
force {U} 0
force {D} 0
force {clock} 0
force {delay} 1
run 20ns


force {clock} 1
run 20ns 

force {R} 0
force {L} 1
force {U} 0
force {D} 0
force {clock} 0
force {countOut} 1
run 20ns


force {clock} 1
run 20ns 

force {clock} 0
run 20ns


force {clock} 1
run 20ns 

force {clock} 0
run 20ns


force {clock} 1
run 20ns 
force {clock} 0
run 20ns


force {clock} 1
run 20ns 
force {clock} 0
run 20ns


force {clock} 1
run 20ns 
force {clock} 0
run 20ns


force {clock} 1
run 20ns 
force {clock} 0
run 20ns


force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 

force {R} 0
force {L} 1
force {U} 0
force {D} 0
force {clock} 0
force {countOut} 111000000000000
run 20ns


force {clock} 1
run 20ns 
force {clock} 0
run 20ns


force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns


force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns


force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 
force {clock} 0
run 20ns
force {clock} 1
run 20ns 





