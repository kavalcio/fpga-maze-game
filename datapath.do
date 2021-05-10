# set the working dir, where all compiled verilog goes
vlib work


# could also have multiple verilog files
vlog -L altera_mf_ver MazeGame.v  Level1.v Level2.v Level3.v Level1_bb.v Level2_bb.v Level3_bb.v

#load simulation using mux as the top level simulation module
vsim datapath

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}

# write to 1111 to 5_bit reg and 00000 to 4 bit register
#set input values using the force command, signal names need to be in {} brackets
force {reset} 0
force {CLOCK} 0
force {resetReg} 1
run 20ns

force {CLOCK} 1
run 20ns

force {reset} 1
force {CLOCK} 1    
#run simulation for a few ns
run 20ns

force {resetCount} 0
force {selCol} 011
force {CLOCK} 0
run 20ns

force {resetCount} 1
force {CLOCK} 1
run 20ns 

force {dir} 1
force {ldx} 0
force {ldy} 0
force {selCol} 0
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns


force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns

force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns

force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns

force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns
force {CLOCK} 0
run 20ns

force{CLOCK} 1
run 20ns