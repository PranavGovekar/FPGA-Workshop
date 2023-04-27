############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project adder_vitis_hls
set_top adder
add_files adder_vitis_hls/adder.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
config_export -format sysgen -output /home/kunal/HLS/Export -rtl verilog
#source "./adder_vitis_hls/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format sysgen -output /home/kunal/HLS/Export
