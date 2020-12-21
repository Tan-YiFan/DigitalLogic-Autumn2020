cd [file dirname [info script]]
add_files top.sv
add_files lab6.sv
add_files lab6.svh
set_property top top [current_fileset]

cd [file dirname [info script]]
add_files -fileset constrs_1 -norecurse Nexys4DDR_Master.xdc

set_property SOURCE_SET sources_1 [get_filesets sim_1]
add_files -fileset sim_1 -norecurse sim.sv
set_property top sim [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]

set_param general.maxThreads 1