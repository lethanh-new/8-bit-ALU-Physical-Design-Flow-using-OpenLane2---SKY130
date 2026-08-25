###############################################################################
# Created by write_sdc
###############################################################################
current_design alu8bit
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name virtual_clk -period 25.0000 
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {inst[0]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {inst[1]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {inst[2]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {inst[3]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_a[0]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_a[1]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_a[2]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_a[3]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_a[4]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_a[5]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_a[6]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_a[7]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_b[0]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_b[1]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_b[2]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_b[3]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_b[4]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_b[5]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_b[6]}]
set_input_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_b[7]}]
set_output_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_out[0]}]
set_output_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_out[1]}]
set_output_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_out[2]}]
set_output_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_out[3]}]
set_output_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_out[4]}]
set_output_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_out[5]}]
set_output_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_out[6]}]
set_output_delay 2.0000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {op_out[7]}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 16.0000 [current_design]
