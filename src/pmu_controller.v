module pmu_controller (
    input clk,
    input reset_n,
    input thermal_alert,      // Trigger from Thermal Engine
    input app_idle,           // CPU is inactive
    input wakeup_event,       // Wakeup signal
    
    output reg pwr_gate_en,   // 1 = Cut VDD to CPU
    output reg isolation_en,  // 1 = Lock CPU outputs
    output reg clk_gate_en,   // 1 = Stop CPU clock
    output [1:0] current_state
);

    // State Encoding
    parameter ACTIVE    = 2'b00;
    parameter IDLE      = 2'b01;
    parameter SLEEP     = 2'b10;
    parameter EMERGENCY = 2'b11;

    reg [1:0] state, next_state;
    assign current_state = state;

    // 1. Sequential Logic (State Memory)
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n)
            state <= ACTIVE;
        else
            state <= next_state;
    end

    // 2. Combinational Logic (Next State)
    always @(*) begin
        next_state = state; // Default: stay in current state
        
        // HIGHEST PRIORITY: Thermal Protection
        if (thermal_alert) begin
            next_state = EMERGENCY;
        end else begin
            case (state)
                ACTIVE: begin
                    if (app_idle) next_state = IDLE;
                end
                IDLE: begin
                    if (wakeup_event) next_state = ACTIVE;
                    else if (app_idle) next_state = SLEEP; // Deep sleep if idle continues
                end
                SLEEP: begin
                    if (wakeup_event) next_state = ACTIVE;
                end
                EMERGENCY: begin
                    if (!thermal_alert && wakeup_event) next_state = ACTIVE; // Only recover if cooled down
                end
            endcase
        end
    end

    // 3. Output Logic (Power Controls)
    always @(*) begin
        // Default safe values (Everything ON)
        pwr_gate_en  = 1'b0; 
        isolation_en = 1'b0;
        clk_gate_en  = 1'b0;

        case (state)
            IDLE: begin
                clk_gate_en = 1'b1; // Stop clock, save dynamic power
            end
            SLEEP: begin
                clk_gate_en  = 1'b1; // Stop clock
                isolation_en = 1'b1; // Lock signals first
                pwr_gate_en  = 1'b1; // Then cut power
            end
            EMERGENCY: begin
                clk_gate_en  = 1'b1; // Stop clock immediately
                isolation_en = 1'b1; // Lock signals
                pwr_gate_en  = 1'b1; // Cut power to prevent thermal damage
            end
        endcase
    end
endmodule
