###############################################################################
# Created by write_sdc
# Tue Apr 28 12:49:31 2026
###############################################################################
current_design pmu_controller
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {app_idle}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {reset_n}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {thermal_alert}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {wakeup_event}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {clk_gate_en}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {current_state[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {current_state[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {isolation_en}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {pwr_gate_en}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {clk_gate_en}]
set_load -pin_load 0.0334 [get_ports {isolation_en}]
set_load -pin_load 0.0334 [get_ports {pwr_gate_en}]
set_load -pin_load 0.0334 [get_ports {current_state[1]}]
set_load -pin_load 0.0334 [get_ports {current_state[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {app_idle}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {reset_n}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {thermal_alert}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wakeup_event}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]
