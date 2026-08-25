create_clock -name virtual_clk -period 25.0

set_input_delay 2.0 -clock virtual_clk [all_inputs]
set_output_delay 2.0 -clock virtual_clk [all_outputs]

set_max_fanout 16 [current_design]
