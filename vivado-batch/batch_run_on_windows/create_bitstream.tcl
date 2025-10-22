# This example came from Google Search, which I think is a summary from 
# the docs at https://docs.amd.com/r/en-US/ug892-vivado-design-flows-overview/Working-with-Tcl
#
# initialize with
# 	source <install_path>/Vivado/<version>/settings64.sh
# or (windows)
# 	call <install_path>\Vivado\<version>\settings64.bat
#
## run this file via sh
#  vivado -mode batch -source <your_script>.tcl
#
set_param general.maxThreads 8
# Define project variables
set project_name "lab4-2"
# Nexys4DDR
set part "xc7a100tcsg324"
#set part "x7a100tcsg324-1" 	
set top_module "nathans_top_level_module"

# Create a project in memory (Non-Project Mode)
create_project $project_name -in_memory -part $part

# Add your design source files
#read_vhdl [glob *.vhd]
read_verilog [glob *.v]
read_xdc "Nexys-4-DDR-Master.xdc"

# Synthesize and implement the design
synth_design -top $top_module
opt_design
place_design
route_design

# Write a bitstream file
write_bitstream -force "${project_name}.bit"

# Exit the Vivado tool
exit
