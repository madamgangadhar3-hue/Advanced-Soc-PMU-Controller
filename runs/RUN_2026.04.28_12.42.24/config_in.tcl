set ::env(DESIGN_NAME) "pmu_controller"
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_PERIOD) "10.0"
set ::env(FP_CORE_UTIL) 45
set ::env(PL_TARGET_DENSITY) 0.50
