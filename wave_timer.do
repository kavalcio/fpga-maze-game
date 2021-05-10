# set the working dir, where all compiled verilog goes
vlib work


# could also have multiple verilog files
vlog MazeGame.v 

#load simulation using mux as the top level simulation module
vsim timer

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}

# write to 1111 to 5_bit reg and 00000 to 4 bit register
#set input values using the force command, signal names need to be in {} brackets
force {reset} 0
force {clock} 0
run 20ns

force {clock} 1
run 20ns

force {reset} 1
force {clock} 0    
#run simulation for a few ns
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
run 20nsforce {clock} 0
run 20ns
force {clock} 1
run 20nsforce {clock} 0
run 20ns
force {clock} 1
run 20nsforce {clock} 0
run 20ns
force {clock} 1
run 20nsforce {clock} 0
run 20ns
force {clock} 1
run 20ns
