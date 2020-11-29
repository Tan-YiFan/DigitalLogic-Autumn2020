cd [file dirname [info script]]
add_files [glob *.sv]
add_files [glob *.svh]
add_files [glob *.xci]
cd [file dirname [info script]]
add_files -fileset constrs_1 -norecurse Nexys4DDR_Master.xdc
set_property top top [current_fileset]
set_param general.maxThreads 16