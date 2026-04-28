set ::env(DESIGN_NAME) "pmu_controller"
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_PERIOD) "10.0"
set ::env(FP_SIZING) "absolute"
set ::env(DIE_AREA) "0 0 50 50"
