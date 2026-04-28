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
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;

 sky130_fd_sc_hd__clkbuf_1 _08_ (.A(net7),
    .X(_02_));
 sky130_fd_sc_hd__clkbuf_1 _09_ (.A(_02_),
    .X(net8));
 sky130_fd_sc_hd__or2_1 _10_ (.A(net7),
    .B(net6),
    .X(_03_));
 sky130_fd_sc_hd__clkbuf_1 _11_ (.A(_03_),
    .X(net5));
 sky130_fd_sc_hd__or2b_1 _12_ (.A(net7),
    .B_N(net1),
    .X(_04_));
 sky130_fd_sc_hd__and2b_1 _13_ (.A_N(net4),
    .B(net6),
    .X(_05_));
 sky130_fd_sc_hd__nor3b_1 _14_ (.A(net7),
    .B(net6),
    .C_N(net1),
    .Y(_06_));
 sky130_fd_sc_hd__a211o_1 _15_ (.A1(_04_),
    .A2(_05_),
    .B1(_06_),
    .C1(net3),
    .X(_00_));
 sky130_fd_sc_hd__a21oi_1 _16_ (.A1(net6),
    .A2(net1),
    .B1(net7),
    .Y(_07_));
 sky130_fd_sc_hd__o21bai_1 _17_ (.A1(net4),
    .A2(_07_),
    .B1_N(net3),
    .Y(_01_));
 sky130_fd_sc_hd__dfrtp_1 _18_ (.CLK(clk),
    .D(_00_),
    .RESET_B(net2),
    .Q(net6));
 sky130_fd_sc_hd__dfrtp_1 _19_ (.CLK(clk),
    .D(_01_),
    .RESET_B(net2),
    .Q(net7));
 sky130_fd_sc_hd__clkbuf_1 _20_ (.A(net8),
    .X(net9));
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
 sky130_fd_sc_hd__buf_1 input1 (.A(app_idle),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(reset_n),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(thermal_alert),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(wakeup_event),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_4 output5 (.A(net5),
    .X(clk_gate_en));
 sky130_fd_sc_hd__buf_2 output6 (.A(net6),
    .X(current_state[0]));
 sky130_fd_sc_hd__buf_2 output7 (.A(net7),
    .X(current_state[1]));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(isolation_en));
 sky130_fd_sc_hd__buf_2 output9 (.A(net9),
    .X(pwr_gate_en));
endmodule
