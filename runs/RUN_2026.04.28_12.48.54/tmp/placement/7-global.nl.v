module pmu_controller (app_idle,
    clk,
    clk_gate_en,
    isolation_en,
    pwr_gate_en,
    reset_n,
    thermal_alert,
    wakeup_event,
    current_state);
 input app_idle;
 input clk;
 output clk_gate_en;
 output isolation_en;
 output pwr_gate_en;
 input reset_n;
 input thermal_alert;
 input wakeup_event;
 output [1:0] current_state;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;

 sky130_fd_sc_hd__buf_1 _08_ (.A(current_state[1]),
    .X(_02_));
 sky130_fd_sc_hd__buf_1 _09_ (.A(_02_),
    .X(isolation_en));
 sky130_fd_sc_hd__or2_2 _10_ (.A(current_state[1]),
    .B(current_state[0]),
    .X(_03_));
 sky130_fd_sc_hd__buf_1 _11_ (.A(_03_),
    .X(clk_gate_en));
 sky130_fd_sc_hd__or2b_2 _12_ (.A(current_state[1]),
    .B_N(app_idle),
    .X(_04_));
 sky130_fd_sc_hd__and2b_2 _13_ (.A_N(wakeup_event),
    .B(current_state[0]),
    .X(_05_));
 sky130_fd_sc_hd__nor3b_2 _14_ (.A(current_state[1]),
    .B(current_state[0]),
    .C_N(app_idle),
    .Y(_06_));
 sky130_fd_sc_hd__a211o_2 _15_ (.A1(_04_),
    .A2(_05_),
    .B1(_06_),
    .C1(thermal_alert),
    .X(_00_));
 sky130_fd_sc_hd__a21oi_2 _16_ (.A1(current_state[0]),
    .A2(app_idle),
    .B1(current_state[1]),
    .Y(_07_));
 sky130_fd_sc_hd__o21bai_2 _17_ (.A1(wakeup_event),
    .A2(_07_),
    .B1_N(thermal_alert),
    .Y(_01_));
 sky130_fd_sc_hd__dfrtp_2 _18_ (.CLK(clk),
    .D(_00_),
    .RESET_B(reset_n),
    .Q(current_state[0]));
 sky130_fd_sc_hd__dfrtp_2 _19_ (.CLK(clk),
    .D(_01_),
    .RESET_B(reset_n),
    .Q(current_state[1]));
 sky130_fd_sc_hd__buf_2 _20_ (.A(isolation_en),
    .X(pwr_gate_en));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_20 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_21 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_22 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_31 ();
endmodule
