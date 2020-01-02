// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="cifar_10,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=12.592000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=246,HLS_SYN_DSP=186,HLS_SYN_FF=25849,HLS_SYN_LUT=85871,HLS_VERSION=2019_1}" *)

module cifar_10 (
        in_stream_TDATA,
        in_stream_TLAST,
        out_stream_TDATA,
        out_stream_TLAST,
        ap_clk,
        ap_rst_n,
        in_stream_TVALID,
        in_stream_TREADY,
        out_stream_TVALID,
        out_stream_TREADY
);


input  [31:0] in_stream_TDATA;
input   in_stream_TLAST;
output  [31:0] out_stream_TDATA;
output   out_stream_TLAST;
input   ap_clk;
input   ap_rst_n;
input   in_stream_TVALID;
output   in_stream_TREADY;
output   out_stream_TVALID;
input   out_stream_TREADY;

 reg    ap_rst_n_inv;
wire    AXI_DMA_SLAVE_U0_ap_start;
wire    AXI_DMA_SLAVE_U0_ap_done;
wire    AXI_DMA_SLAVE_U0_ap_continue;
wire    AXI_DMA_SLAVE_U0_ap_idle;
wire    AXI_DMA_SLAVE_U0_ap_ready;
wire    AXI_DMA_SLAVE_U0_start_out;
wire    AXI_DMA_SLAVE_U0_start_write;
wire    AXI_DMA_SLAVE_U0_in_stream_TREADY;
wire   [31:0] AXI_DMA_SLAVE_U0_out_stream_V_V_din;
wire    AXI_DMA_SLAVE_U0_out_stream_V_V_write;
wire    SCIG_U0_ap_start;
wire    SCIG_U0_ap_done;
wire    SCIG_U0_ap_continue;
wire    SCIG_U0_ap_idle;
wire    SCIG_U0_ap_ready;
wire    SCIG_U0_start_out;
wire    SCIG_U0_start_write;
wire    SCIG_U0_in_V_V_read;
wire   [31:0] SCIG_U0_out_V_V_din;
wire    SCIG_U0_out_V_V_write;
wire    SMM_1u_75u_32u_U0_ap_start;
wire    SMM_1u_75u_32u_U0_ap_done;
wire    SMM_1u_75u_32u_U0_ap_continue;
wire    SMM_1u_75u_32u_U0_ap_idle;
wire    SMM_1u_75u_32u_U0_ap_ready;
wire    SMM_1u_75u_32u_U0_start_out;
wire    SMM_1u_75u_32u_U0_start_write;
wire    SMM_1u_75u_32u_U0_in_stream_a_V_V_read;
wire   [31:0] SMM_1u_75u_32u_U0_out_stream_V_V_din;
wire    SMM_1u_75u_32u_U0_out_stream_V_V_write;
wire    pool_2u_32u_32u_U0_ap_start;
wire    pool_2u_32u_32u_U0_ap_done;
wire    pool_2u_32u_32u_U0_ap_continue;
wire    pool_2u_32u_32u_U0_ap_idle;
wire    pool_2u_32u_32u_U0_ap_ready;
wire    pool_2u_32u_32u_U0_start_out;
wire    pool_2u_32u_32u_U0_start_write;
wire    pool_2u_32u_32u_U0_in_V_V_read;
wire   [31:0] pool_2u_32u_32u_U0_out_V_V_din;
wire    pool_2u_32u_32u_U0_out_V_V_write;
wire    SCIG_2_U0_ap_start;
wire    SCIG_2_U0_ap_done;
wire    SCIG_2_U0_ap_continue;
wire    SCIG_2_U0_ap_idle;
wire    SCIG_2_U0_ap_ready;
wire    SCIG_2_U0_start_out;
wire    SCIG_2_U0_start_write;
wire    SCIG_2_U0_in_V_V_read;
wire   [31:0] SCIG_2_U0_out_V_V_din;
wire    SCIG_2_U0_out_V_V_write;
wire    SMM_1u_800u_32u_U0_ap_start;
wire    SMM_1u_800u_32u_U0_ap_done;
wire    SMM_1u_800u_32u_U0_ap_continue;
wire    SMM_1u_800u_32u_U0_ap_idle;
wire    SMM_1u_800u_32u_U0_ap_ready;
wire    SMM_1u_800u_32u_U0_start_out;
wire    SMM_1u_800u_32u_U0_start_write;
wire    SMM_1u_800u_32u_U0_in_stream_a_V_V_read;
wire   [31:0] SMM_1u_800u_32u_U0_out_stream_V_V_din;
wire    SMM_1u_800u_32u_U0_out_stream_V_V_write;
wire    pool_2u_32u_16u_U0_ap_start;
wire    pool_2u_32u_16u_U0_ap_done;
wire    pool_2u_32u_16u_U0_ap_continue;
wire    pool_2u_32u_16u_U0_ap_idle;
wire    pool_2u_32u_16u_U0_ap_ready;
wire    pool_2u_32u_16u_U0_start_out;
wire    pool_2u_32u_16u_U0_start_write;
wire    pool_2u_32u_16u_U0_in_V_V_read;
wire   [31:0] pool_2u_32u_16u_U0_out_V_V_din;
wire    pool_2u_32u_16u_U0_out_V_V_write;
wire    SCIG_1_U0_ap_start;
wire    SCIG_1_U0_ap_done;
wire    SCIG_1_U0_ap_continue;
wire    SCIG_1_U0_ap_idle;
wire    SCIG_1_U0_ap_ready;
wire    SCIG_1_U0_start_out;
wire    SCIG_1_U0_start_write;
wire    SCIG_1_U0_in_V_V_read;
wire   [31:0] SCIG_1_U0_out_V_V_din;
wire    SCIG_1_U0_out_V_V_write;
wire    SMM_1u_800u_64u_U0_ap_start;
wire    SMM_1u_800u_64u_U0_ap_done;
wire    SMM_1u_800u_64u_U0_ap_continue;
wire    SMM_1u_800u_64u_U0_ap_idle;
wire    SMM_1u_800u_64u_U0_ap_ready;
wire    SMM_1u_800u_64u_U0_start_out;
wire    SMM_1u_800u_64u_U0_start_write;
wire    SMM_1u_800u_64u_U0_in_stream_a_V_V_read;
wire   [31:0] SMM_1u_800u_64u_U0_out_stream_V_V_din;
wire    SMM_1u_800u_64u_U0_out_stream_V_V_write;
wire    pool_2u_64u_8u_U0_ap_start;
wire    pool_2u_64u_8u_U0_ap_done;
wire    pool_2u_64u_8u_U0_ap_continue;
wire    pool_2u_64u_8u_U0_ap_idle;
wire    pool_2u_64u_8u_U0_ap_ready;
wire    pool_2u_64u_8u_U0_start_out;
wire    pool_2u_64u_8u_U0_start_write;
wire    pool_2u_64u_8u_U0_in_V_V_read;
wire   [31:0] pool_2u_64u_8u_U0_out_V_V_din;
wire    pool_2u_64u_8u_U0_out_V_V_write;
wire    FC_1u_1024u_64u_U0_ap_start;
wire    FC_1u_1024u_64u_U0_ap_done;
wire    FC_1u_1024u_64u_U0_ap_continue;
wire    FC_1u_1024u_64u_U0_ap_idle;
wire    FC_1u_1024u_64u_U0_ap_ready;
wire    FC_1u_1024u_64u_U0_start_out;
wire    FC_1u_1024u_64u_U0_start_write;
wire    FC_1u_1024u_64u_U0_in_stream_a_V_V_read;
wire   [31:0] FC_1u_1024u_64u_U0_out_stream_V_V_din;
wire    FC_1u_1024u_64u_U0_out_stream_V_V_write;
wire    FC_1u_64u_10u_U0_ap_start;
wire    FC_1u_64u_10u_U0_ap_done;
wire    FC_1u_64u_10u_U0_ap_continue;
wire    FC_1u_64u_10u_U0_ap_idle;
wire    FC_1u_64u_10u_U0_ap_ready;
wire    FC_1u_64u_10u_U0_start_out;
wire    FC_1u_64u_10u_U0_start_write;
wire    FC_1u_64u_10u_U0_in_stream_a_V_V_read;
wire   [31:0] FC_1u_64u_10u_U0_out_stream_V_V_din;
wire    FC_1u_64u_10u_U0_out_stream_V_V_write;
wire    AXI_DMA_MASTER_U0_ap_start;
wire    AXI_DMA_MASTER_U0_ap_done;
wire    AXI_DMA_MASTER_U0_ap_continue;
wire    AXI_DMA_MASTER_U0_ap_idle;
wire    AXI_DMA_MASTER_U0_ap_ready;
wire    AXI_DMA_MASTER_U0_in_stream_V_V_read;
wire   [31:0] AXI_DMA_MASTER_U0_out_stream_TDATA;
wire    AXI_DMA_MASTER_U0_out_stream_TVALID;
wire    AXI_DMA_MASTER_U0_out_stream_TLAST;
wire    ap_sync_continue;
wire    connect_0_V_V_full_n;
wire   [31:0] connect_0_V_V_dout;
wire    connect_0_V_V_empty_n;
wire    connect_1_V_V_full_n;
wire   [31:0] connect_1_V_V_dout;
wire    connect_1_V_V_empty_n;
wire    connect_2_V_V_full_n;
wire   [31:0] connect_2_V_V_dout;
wire    connect_2_V_V_empty_n;
wire    connect_3_V_V_full_n;
wire   [31:0] connect_3_V_V_dout;
wire    connect_3_V_V_empty_n;
wire    connect_4_V_V_full_n;
wire   [31:0] connect_4_V_V_dout;
wire    connect_4_V_V_empty_n;
wire    connect_5_V_V_full_n;
wire   [31:0] connect_5_V_V_dout;
wire    connect_5_V_V_empty_n;
wire    connect_6_V_V_full_n;
wire   [31:0] connect_6_V_V_dout;
wire    connect_6_V_V_empty_n;
wire    connect_7_V_V_full_n;
wire   [31:0] connect_7_V_V_dout;
wire    connect_7_V_V_empty_n;
wire    connect_8_V_V_full_n;
wire   [31:0] connect_8_V_V_dout;
wire    connect_8_V_V_empty_n;
wire    connect_9_V_V_full_n;
wire   [31:0] connect_9_V_V_dout;
wire    connect_9_V_V_empty_n;
wire    connect_10_V_V_full_n;
wire   [31:0] connect_10_V_V_dout;
wire    connect_10_V_V_empty_n;
wire    connect_11_V_V_full_n;
wire   [31:0] connect_11_V_V_dout;
wire    connect_11_V_V_empty_n;
wire   [0:0] start_for_SCIG_U0_din;
wire    start_for_SCIG_U0_full_n;
wire   [0:0] start_for_SCIG_U0_dout;
wire    start_for_SCIG_U0_empty_n;
wire   [0:0] start_for_SMM_1u_75u_32u_U0_din;
wire    start_for_SMM_1u_75u_32u_U0_full_n;
wire   [0:0] start_for_SMM_1u_75u_32u_U0_dout;
wire    start_for_SMM_1u_75u_32u_U0_empty_n;
wire   [0:0] start_for_pool_2u_32u_32u_U0_din;
wire    start_for_pool_2u_32u_32u_U0_full_n;
wire   [0:0] start_for_pool_2u_32u_32u_U0_dout;
wire    start_for_pool_2u_32u_32u_U0_empty_n;
wire   [0:0] start_for_SCIG_2_U0_din;
wire    start_for_SCIG_2_U0_full_n;
wire   [0:0] start_for_SCIG_2_U0_dout;
wire    start_for_SCIG_2_U0_empty_n;
wire   [0:0] start_for_SMM_1u_800u_32u_U0_din;
wire    start_for_SMM_1u_800u_32u_U0_full_n;
wire   [0:0] start_for_SMM_1u_800u_32u_U0_dout;
wire    start_for_SMM_1u_800u_32u_U0_empty_n;
wire   [0:0] start_for_pool_2u_32u_16u_U0_din;
wire    start_for_pool_2u_32u_16u_U0_full_n;
wire   [0:0] start_for_pool_2u_32u_16u_U0_dout;
wire    start_for_pool_2u_32u_16u_U0_empty_n;
wire   [0:0] start_for_SCIG_1_U0_din;
wire    start_for_SCIG_1_U0_full_n;
wire   [0:0] start_for_SCIG_1_U0_dout;
wire    start_for_SCIG_1_U0_empty_n;
wire   [0:0] start_for_SMM_1u_800u_64u_U0_din;
wire    start_for_SMM_1u_800u_64u_U0_full_n;
wire   [0:0] start_for_SMM_1u_800u_64u_U0_dout;
wire    start_for_SMM_1u_800u_64u_U0_empty_n;
wire   [0:0] start_for_pool_2u_64u_8u_U0_din;
wire    start_for_pool_2u_64u_8u_U0_full_n;
wire   [0:0] start_for_pool_2u_64u_8u_U0_dout;
wire    start_for_pool_2u_64u_8u_U0_empty_n;
wire   [0:0] start_for_FC_1u_1024u_64u_U0_din;
wire    start_for_FC_1u_1024u_64u_U0_full_n;
wire   [0:0] start_for_FC_1u_1024u_64u_U0_dout;
wire    start_for_FC_1u_1024u_64u_U0_empty_n;
wire   [0:0] start_for_FC_1u_64u_10u_U0_din;
wire    start_for_FC_1u_64u_10u_U0_full_n;
wire   [0:0] start_for_FC_1u_64u_10u_U0_dout;
wire    start_for_FC_1u_64u_10u_U0_empty_n;
wire   [0:0] start_for_AXI_DMA_MASTER_U0_din;
wire    start_for_AXI_DMA_MASTER_U0_full_n;
wire   [0:0] start_for_AXI_DMA_MASTER_U0_dout;
wire    start_for_AXI_DMA_MASTER_U0_empty_n;
wire    AXI_DMA_MASTER_U0_start_full_n;
wire    AXI_DMA_MASTER_U0_start_write;

AXI_DMA_SLAVE AXI_DMA_SLAVE_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXI_DMA_SLAVE_U0_ap_start),
    .start_full_n(start_for_SCIG_U0_full_n),
    .ap_done(AXI_DMA_SLAVE_U0_ap_done),
    .ap_continue(AXI_DMA_SLAVE_U0_ap_continue),
    .ap_idle(AXI_DMA_SLAVE_U0_ap_idle),
    .ap_ready(AXI_DMA_SLAVE_U0_ap_ready),
    .start_out(AXI_DMA_SLAVE_U0_start_out),
    .start_write(AXI_DMA_SLAVE_U0_start_write),
    .in_stream_TDATA(in_stream_TDATA),
    .in_stream_TVALID(in_stream_TVALID),
    .in_stream_TREADY(AXI_DMA_SLAVE_U0_in_stream_TREADY),
    .in_stream_TLAST(in_stream_TLAST),
    .out_stream_V_V_din(AXI_DMA_SLAVE_U0_out_stream_V_V_din),
    .out_stream_V_V_full_n(connect_0_V_V_full_n),
    .out_stream_V_V_write(AXI_DMA_SLAVE_U0_out_stream_V_V_write)
);

SCIG SCIG_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(SCIG_U0_ap_start),
    .start_full_n(start_for_SMM_1u_75u_32u_U0_full_n),
    .ap_done(SCIG_U0_ap_done),
    .ap_continue(SCIG_U0_ap_continue),
    .ap_idle(SCIG_U0_ap_idle),
    .ap_ready(SCIG_U0_ap_ready),
    .start_out(SCIG_U0_start_out),
    .start_write(SCIG_U0_start_write),
    .in_V_V_dout(connect_0_V_V_dout),
    .in_V_V_empty_n(connect_0_V_V_empty_n),
    .in_V_V_read(SCIG_U0_in_V_V_read),
    .out_V_V_din(SCIG_U0_out_V_V_din),
    .out_V_V_full_n(connect_1_V_V_full_n),
    .out_V_V_write(SCIG_U0_out_V_V_write)
);

SMM_1u_75u_32u_s SMM_1u_75u_32u_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(SMM_1u_75u_32u_U0_ap_start),
    .start_full_n(start_for_pool_2u_32u_32u_U0_full_n),
    .ap_done(SMM_1u_75u_32u_U0_ap_done),
    .ap_continue(SMM_1u_75u_32u_U0_ap_continue),
    .ap_idle(SMM_1u_75u_32u_U0_ap_idle),
    .ap_ready(SMM_1u_75u_32u_U0_ap_ready),
    .start_out(SMM_1u_75u_32u_U0_start_out),
    .start_write(SMM_1u_75u_32u_U0_start_write),
    .in_stream_a_V_V_dout(connect_1_V_V_dout),
    .in_stream_a_V_V_empty_n(connect_1_V_V_empty_n),
    .in_stream_a_V_V_read(SMM_1u_75u_32u_U0_in_stream_a_V_V_read),
    .out_stream_V_V_din(SMM_1u_75u_32u_U0_out_stream_V_V_din),
    .out_stream_V_V_full_n(connect_2_V_V_full_n),
    .out_stream_V_V_write(SMM_1u_75u_32u_U0_out_stream_V_V_write)
);

pool_2u_32u_32u_s pool_2u_32u_32u_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(pool_2u_32u_32u_U0_ap_start),
    .start_full_n(start_for_SCIG_2_U0_full_n),
    .ap_done(pool_2u_32u_32u_U0_ap_done),
    .ap_continue(pool_2u_32u_32u_U0_ap_continue),
    .ap_idle(pool_2u_32u_32u_U0_ap_idle),
    .ap_ready(pool_2u_32u_32u_U0_ap_ready),
    .start_out(pool_2u_32u_32u_U0_start_out),
    .start_write(pool_2u_32u_32u_U0_start_write),
    .in_V_V_dout(connect_2_V_V_dout),
    .in_V_V_empty_n(connect_2_V_V_empty_n),
    .in_V_V_read(pool_2u_32u_32u_U0_in_V_V_read),
    .out_V_V_din(pool_2u_32u_32u_U0_out_V_V_din),
    .out_V_V_full_n(connect_3_V_V_full_n),
    .out_V_V_write(pool_2u_32u_32u_U0_out_V_V_write)
);

SCIG_2 SCIG_2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(SCIG_2_U0_ap_start),
    .start_full_n(start_for_SMM_1u_800u_32u_U0_full_n),
    .ap_done(SCIG_2_U0_ap_done),
    .ap_continue(SCIG_2_U0_ap_continue),
    .ap_idle(SCIG_2_U0_ap_idle),
    .ap_ready(SCIG_2_U0_ap_ready),
    .start_out(SCIG_2_U0_start_out),
    .start_write(SCIG_2_U0_start_write),
    .in_V_V_dout(connect_3_V_V_dout),
    .in_V_V_empty_n(connect_3_V_V_empty_n),
    .in_V_V_read(SCIG_2_U0_in_V_V_read),
    .out_V_V_din(SCIG_2_U0_out_V_V_din),
    .out_V_V_full_n(connect_4_V_V_full_n),
    .out_V_V_write(SCIG_2_U0_out_V_V_write)
);

SMM_1u_800u_32u_s SMM_1u_800u_32u_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(SMM_1u_800u_32u_U0_ap_start),
    .start_full_n(start_for_pool_2u_32u_16u_U0_full_n),
    .ap_done(SMM_1u_800u_32u_U0_ap_done),
    .ap_continue(SMM_1u_800u_32u_U0_ap_continue),
    .ap_idle(SMM_1u_800u_32u_U0_ap_idle),
    .ap_ready(SMM_1u_800u_32u_U0_ap_ready),
    .start_out(SMM_1u_800u_32u_U0_start_out),
    .start_write(SMM_1u_800u_32u_U0_start_write),
    .in_stream_a_V_V_dout(connect_4_V_V_dout),
    .in_stream_a_V_V_empty_n(connect_4_V_V_empty_n),
    .in_stream_a_V_V_read(SMM_1u_800u_32u_U0_in_stream_a_V_V_read),
    .out_stream_V_V_din(SMM_1u_800u_32u_U0_out_stream_V_V_din),
    .out_stream_V_V_full_n(connect_5_V_V_full_n),
    .out_stream_V_V_write(SMM_1u_800u_32u_U0_out_stream_V_V_write)
);

pool_2u_32u_16u_s pool_2u_32u_16u_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(pool_2u_32u_16u_U0_ap_start),
    .start_full_n(start_for_SCIG_1_U0_full_n),
    .ap_done(pool_2u_32u_16u_U0_ap_done),
    .ap_continue(pool_2u_32u_16u_U0_ap_continue),
    .ap_idle(pool_2u_32u_16u_U0_ap_idle),
    .ap_ready(pool_2u_32u_16u_U0_ap_ready),
    .start_out(pool_2u_32u_16u_U0_start_out),
    .start_write(pool_2u_32u_16u_U0_start_write),
    .in_V_V_dout(connect_5_V_V_dout),
    .in_V_V_empty_n(connect_5_V_V_empty_n),
    .in_V_V_read(pool_2u_32u_16u_U0_in_V_V_read),
    .out_V_V_din(pool_2u_32u_16u_U0_out_V_V_din),
    .out_V_V_full_n(connect_6_V_V_full_n),
    .out_V_V_write(pool_2u_32u_16u_U0_out_V_V_write)
);

SCIG_1 SCIG_1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(SCIG_1_U0_ap_start),
    .start_full_n(start_for_SMM_1u_800u_64u_U0_full_n),
    .ap_done(SCIG_1_U0_ap_done),
    .ap_continue(SCIG_1_U0_ap_continue),
    .ap_idle(SCIG_1_U0_ap_idle),
    .ap_ready(SCIG_1_U0_ap_ready),
    .start_out(SCIG_1_U0_start_out),
    .start_write(SCIG_1_U0_start_write),
    .in_V_V_dout(connect_6_V_V_dout),
    .in_V_V_empty_n(connect_6_V_V_empty_n),
    .in_V_V_read(SCIG_1_U0_in_V_V_read),
    .out_V_V_din(SCIG_1_U0_out_V_V_din),
    .out_V_V_full_n(connect_7_V_V_full_n),
    .out_V_V_write(SCIG_1_U0_out_V_V_write)
);

SMM_1u_800u_64u_s SMM_1u_800u_64u_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(SMM_1u_800u_64u_U0_ap_start),
    .start_full_n(start_for_pool_2u_64u_8u_U0_full_n),
    .ap_done(SMM_1u_800u_64u_U0_ap_done),
    .ap_continue(SMM_1u_800u_64u_U0_ap_continue),
    .ap_idle(SMM_1u_800u_64u_U0_ap_idle),
    .ap_ready(SMM_1u_800u_64u_U0_ap_ready),
    .start_out(SMM_1u_800u_64u_U0_start_out),
    .start_write(SMM_1u_800u_64u_U0_start_write),
    .in_stream_a_V_V_dout(connect_7_V_V_dout),
    .in_stream_a_V_V_empty_n(connect_7_V_V_empty_n),
    .in_stream_a_V_V_read(SMM_1u_800u_64u_U0_in_stream_a_V_V_read),
    .out_stream_V_V_din(SMM_1u_800u_64u_U0_out_stream_V_V_din),
    .out_stream_V_V_full_n(connect_8_V_V_full_n),
    .out_stream_V_V_write(SMM_1u_800u_64u_U0_out_stream_V_V_write)
);

pool_2u_64u_8u_s pool_2u_64u_8u_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(pool_2u_64u_8u_U0_ap_start),
    .start_full_n(start_for_FC_1u_1024u_64u_U0_full_n),
    .ap_done(pool_2u_64u_8u_U0_ap_done),
    .ap_continue(pool_2u_64u_8u_U0_ap_continue),
    .ap_idle(pool_2u_64u_8u_U0_ap_idle),
    .ap_ready(pool_2u_64u_8u_U0_ap_ready),
    .start_out(pool_2u_64u_8u_U0_start_out),
    .start_write(pool_2u_64u_8u_U0_start_write),
    .in_V_V_dout(connect_8_V_V_dout),
    .in_V_V_empty_n(connect_8_V_V_empty_n),
    .in_V_V_read(pool_2u_64u_8u_U0_in_V_V_read),
    .out_V_V_din(pool_2u_64u_8u_U0_out_V_V_din),
    .out_V_V_full_n(connect_9_V_V_full_n),
    .out_V_V_write(pool_2u_64u_8u_U0_out_V_V_write)
);

FC_1u_1024u_64u_s FC_1u_1024u_64u_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(FC_1u_1024u_64u_U0_ap_start),
    .start_full_n(start_for_FC_1u_64u_10u_U0_full_n),
    .ap_done(FC_1u_1024u_64u_U0_ap_done),
    .ap_continue(FC_1u_1024u_64u_U0_ap_continue),
    .ap_idle(FC_1u_1024u_64u_U0_ap_idle),
    .ap_ready(FC_1u_1024u_64u_U0_ap_ready),
    .start_out(FC_1u_1024u_64u_U0_start_out),
    .start_write(FC_1u_1024u_64u_U0_start_write),
    .in_stream_a_V_V_dout(connect_9_V_V_dout),
    .in_stream_a_V_V_empty_n(connect_9_V_V_empty_n),
    .in_stream_a_V_V_read(FC_1u_1024u_64u_U0_in_stream_a_V_V_read),
    .out_stream_V_V_din(FC_1u_1024u_64u_U0_out_stream_V_V_din),
    .out_stream_V_V_full_n(connect_10_V_V_full_n),
    .out_stream_V_V_write(FC_1u_1024u_64u_U0_out_stream_V_V_write)
);

FC_1u_64u_10u_s FC_1u_64u_10u_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(FC_1u_64u_10u_U0_ap_start),
    .start_full_n(start_for_AXI_DMA_MASTER_U0_full_n),
    .ap_done(FC_1u_64u_10u_U0_ap_done),
    .ap_continue(FC_1u_64u_10u_U0_ap_continue),
    .ap_idle(FC_1u_64u_10u_U0_ap_idle),
    .ap_ready(FC_1u_64u_10u_U0_ap_ready),
    .start_out(FC_1u_64u_10u_U0_start_out),
    .start_write(FC_1u_64u_10u_U0_start_write),
    .in_stream_a_V_V_dout(connect_10_V_V_dout),
    .in_stream_a_V_V_empty_n(connect_10_V_V_empty_n),
    .in_stream_a_V_V_read(FC_1u_64u_10u_U0_in_stream_a_V_V_read),
    .out_stream_V_V_din(FC_1u_64u_10u_U0_out_stream_V_V_din),
    .out_stream_V_V_full_n(connect_11_V_V_full_n),
    .out_stream_V_V_write(FC_1u_64u_10u_U0_out_stream_V_V_write)
);

AXI_DMA_MASTER AXI_DMA_MASTER_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXI_DMA_MASTER_U0_ap_start),
    .ap_done(AXI_DMA_MASTER_U0_ap_done),
    .ap_continue(AXI_DMA_MASTER_U0_ap_continue),
    .ap_idle(AXI_DMA_MASTER_U0_ap_idle),
    .ap_ready(AXI_DMA_MASTER_U0_ap_ready),
    .in_stream_V_V_dout(connect_11_V_V_dout),
    .in_stream_V_V_empty_n(connect_11_V_V_empty_n),
    .in_stream_V_V_read(AXI_DMA_MASTER_U0_in_stream_V_V_read),
    .out_stream_TDATA(AXI_DMA_MASTER_U0_out_stream_TDATA),
    .out_stream_TVALID(AXI_DMA_MASTER_U0_out_stream_TVALID),
    .out_stream_TREADY(out_stream_TREADY),
    .out_stream_TLAST(AXI_DMA_MASTER_U0_out_stream_TLAST)
);

fifo_w32_d50_A connect_0_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXI_DMA_SLAVE_U0_out_stream_V_V_din),
    .if_full_n(connect_0_V_V_full_n),
    .if_write(AXI_DMA_SLAVE_U0_out_stream_V_V_write),
    .if_dout(connect_0_V_V_dout),
    .if_empty_n(connect_0_V_V_empty_n),
    .if_read(SCIG_U0_in_V_V_read)
);

fifo_w32_d50_A connect_1_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(SCIG_U0_out_V_V_din),
    .if_full_n(connect_1_V_V_full_n),
    .if_write(SCIG_U0_out_V_V_write),
    .if_dout(connect_1_V_V_dout),
    .if_empty_n(connect_1_V_V_empty_n),
    .if_read(SMM_1u_75u_32u_U0_in_stream_a_V_V_read)
);

fifo_w32_d2_A connect_2_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(SMM_1u_75u_32u_U0_out_stream_V_V_din),
    .if_full_n(connect_2_V_V_full_n),
    .if_write(SMM_1u_75u_32u_U0_out_stream_V_V_write),
    .if_dout(connect_2_V_V_dout),
    .if_empty_n(connect_2_V_V_empty_n),
    .if_read(pool_2u_32u_32u_U0_in_V_V_read)
);

fifo_w32_d50_A connect_3_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(pool_2u_32u_32u_U0_out_V_V_din),
    .if_full_n(connect_3_V_V_full_n),
    .if_write(pool_2u_32u_32u_U0_out_V_V_write),
    .if_dout(connect_3_V_V_dout),
    .if_empty_n(connect_3_V_V_empty_n),
    .if_read(SCIG_2_U0_in_V_V_read)
);

fifo_w32_d50_A connect_4_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(SCIG_2_U0_out_V_V_din),
    .if_full_n(connect_4_V_V_full_n),
    .if_write(SCIG_2_U0_out_V_V_write),
    .if_dout(connect_4_V_V_dout),
    .if_empty_n(connect_4_V_V_empty_n),
    .if_read(SMM_1u_800u_32u_U0_in_stream_a_V_V_read)
);

fifo_w32_d2_A connect_5_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(SMM_1u_800u_32u_U0_out_stream_V_V_din),
    .if_full_n(connect_5_V_V_full_n),
    .if_write(SMM_1u_800u_32u_U0_out_stream_V_V_write),
    .if_dout(connect_5_V_V_dout),
    .if_empty_n(connect_5_V_V_empty_n),
    .if_read(pool_2u_32u_16u_U0_in_V_V_read)
);

fifo_w32_d50_A connect_6_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(pool_2u_32u_16u_U0_out_V_V_din),
    .if_full_n(connect_6_V_V_full_n),
    .if_write(pool_2u_32u_16u_U0_out_V_V_write),
    .if_dout(connect_6_V_V_dout),
    .if_empty_n(connect_6_V_V_empty_n),
    .if_read(SCIG_1_U0_in_V_V_read)
);

fifo_w32_d50_A connect_7_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(SCIG_1_U0_out_V_V_din),
    .if_full_n(connect_7_V_V_full_n),
    .if_write(SCIG_1_U0_out_V_V_write),
    .if_dout(connect_7_V_V_dout),
    .if_empty_n(connect_7_V_V_empty_n),
    .if_read(SMM_1u_800u_64u_U0_in_stream_a_V_V_read)
);

fifo_w32_d2_A connect_8_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(SMM_1u_800u_64u_U0_out_stream_V_V_din),
    .if_full_n(connect_8_V_V_full_n),
    .if_write(SMM_1u_800u_64u_U0_out_stream_V_V_write),
    .if_dout(connect_8_V_V_dout),
    .if_empty_n(connect_8_V_V_empty_n),
    .if_read(pool_2u_64u_8u_U0_in_V_V_read)
);

fifo_w32_d50_A connect_9_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(pool_2u_64u_8u_U0_out_V_V_din),
    .if_full_n(connect_9_V_V_full_n),
    .if_write(pool_2u_64u_8u_U0_out_V_V_write),
    .if_dout(connect_9_V_V_dout),
    .if_empty_n(connect_9_V_V_empty_n),
    .if_read(FC_1u_1024u_64u_U0_in_stream_a_V_V_read)
);

fifo_w32_d50_A connect_10_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(FC_1u_1024u_64u_U0_out_stream_V_V_din),
    .if_full_n(connect_10_V_V_full_n),
    .if_write(FC_1u_1024u_64u_U0_out_stream_V_V_write),
    .if_dout(connect_10_V_V_dout),
    .if_empty_n(connect_10_V_V_empty_n),
    .if_read(FC_1u_64u_10u_U0_in_stream_a_V_V_read)
);

fifo_w32_d50_A connect_11_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(FC_1u_64u_10u_U0_out_stream_V_V_din),
    .if_full_n(connect_11_V_V_full_n),
    .if_write(FC_1u_64u_10u_U0_out_stream_V_V_write),
    .if_dout(connect_11_V_V_dout),
    .if_empty_n(connect_11_V_V_empty_n),
    .if_read(AXI_DMA_MASTER_U0_in_stream_V_V_read)
);

start_for_SCIG_U0 start_for_SCIG_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_SCIG_U0_din),
    .if_full_n(start_for_SCIG_U0_full_n),
    .if_write(AXI_DMA_SLAVE_U0_start_write),
    .if_dout(start_for_SCIG_U0_dout),
    .if_empty_n(start_for_SCIG_U0_empty_n),
    .if_read(SCIG_U0_ap_ready)
);

start_for_SMM_1u_emP start_for_SMM_1u_emP_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_SMM_1u_75u_32u_U0_din),
    .if_full_n(start_for_SMM_1u_75u_32u_U0_full_n),
    .if_write(SCIG_U0_start_write),
    .if_dout(start_for_SMM_1u_75u_32u_U0_dout),
    .if_empty_n(start_for_SMM_1u_75u_32u_U0_empty_n),
    .if_read(SMM_1u_75u_32u_U0_ap_ready)
);

start_for_pool_2uenQ start_for_pool_2uenQ_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_pool_2u_32u_32u_U0_din),
    .if_full_n(start_for_pool_2u_32u_32u_U0_full_n),
    .if_write(SMM_1u_75u_32u_U0_start_write),
    .if_dout(start_for_pool_2u_32u_32u_U0_dout),
    .if_empty_n(start_for_pool_2u_32u_32u_U0_empty_n),
    .if_read(pool_2u_32u_32u_U0_ap_ready)
);

start_for_SCIG_2_U0 start_for_SCIG_2_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_SCIG_2_U0_din),
    .if_full_n(start_for_SCIG_2_U0_full_n),
    .if_write(pool_2u_32u_32u_U0_start_write),
    .if_dout(start_for_SCIG_2_U0_dout),
    .if_empty_n(start_for_SCIG_2_U0_empty_n),
    .if_read(SCIG_2_U0_ap_ready)
);

start_for_SMM_1u_eoQ start_for_SMM_1u_eoQ_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_SMM_1u_800u_32u_U0_din),
    .if_full_n(start_for_SMM_1u_800u_32u_U0_full_n),
    .if_write(SCIG_2_U0_start_write),
    .if_dout(start_for_SMM_1u_800u_32u_U0_dout),
    .if_empty_n(start_for_SMM_1u_800u_32u_U0_empty_n),
    .if_read(SMM_1u_800u_32u_U0_ap_ready)
);

start_for_pool_2uepQ start_for_pool_2uepQ_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_pool_2u_32u_16u_U0_din),
    .if_full_n(start_for_pool_2u_32u_16u_U0_full_n),
    .if_write(SMM_1u_800u_32u_U0_start_write),
    .if_dout(start_for_pool_2u_32u_16u_U0_dout),
    .if_empty_n(start_for_pool_2u_32u_16u_U0_empty_n),
    .if_read(pool_2u_32u_16u_U0_ap_ready)
);

start_for_SCIG_1_U0 start_for_SCIG_1_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_SCIG_1_U0_din),
    .if_full_n(start_for_SCIG_1_U0_full_n),
    .if_write(pool_2u_32u_16u_U0_start_write),
    .if_dout(start_for_SCIG_1_U0_dout),
    .if_empty_n(start_for_SCIG_1_U0_empty_n),
    .if_read(SCIG_1_U0_ap_ready)
);

start_for_SMM_1u_eqQ start_for_SMM_1u_eqQ_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_SMM_1u_800u_64u_U0_din),
    .if_full_n(start_for_SMM_1u_800u_64u_U0_full_n),
    .if_write(SCIG_1_U0_start_write),
    .if_dout(start_for_SMM_1u_800u_64u_U0_dout),
    .if_empty_n(start_for_SMM_1u_800u_64u_U0_empty_n),
    .if_read(SMM_1u_800u_64u_U0_ap_ready)
);

start_for_pool_2uerQ start_for_pool_2uerQ_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_pool_2u_64u_8u_U0_din),
    .if_full_n(start_for_pool_2u_64u_8u_U0_full_n),
    .if_write(SMM_1u_800u_64u_U0_start_write),
    .if_dout(start_for_pool_2u_64u_8u_U0_dout),
    .if_empty_n(start_for_pool_2u_64u_8u_U0_empty_n),
    .if_read(pool_2u_64u_8u_U0_ap_ready)
);

start_for_FC_1u_1esQ start_for_FC_1u_1esQ_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_FC_1u_1024u_64u_U0_din),
    .if_full_n(start_for_FC_1u_1024u_64u_U0_full_n),
    .if_write(pool_2u_64u_8u_U0_start_write),
    .if_dout(start_for_FC_1u_1024u_64u_U0_dout),
    .if_empty_n(start_for_FC_1u_1024u_64u_U0_empty_n),
    .if_read(FC_1u_1024u_64u_U0_ap_ready)
);

start_for_FC_1u_6etR start_for_FC_1u_6etR_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_FC_1u_64u_10u_U0_din),
    .if_full_n(start_for_FC_1u_64u_10u_U0_full_n),
    .if_write(FC_1u_1024u_64u_U0_start_write),
    .if_dout(start_for_FC_1u_64u_10u_U0_dout),
    .if_empty_n(start_for_FC_1u_64u_10u_U0_empty_n),
    .if_read(FC_1u_64u_10u_U0_ap_ready)
);

start_for_AXI_DMAeuR start_for_AXI_DMAeuR_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_AXI_DMA_MASTER_U0_din),
    .if_full_n(start_for_AXI_DMA_MASTER_U0_full_n),
    .if_write(FC_1u_64u_10u_U0_start_write),
    .if_dout(start_for_AXI_DMA_MASTER_U0_dout),
    .if_empty_n(start_for_AXI_DMA_MASTER_U0_empty_n),
    .if_read(AXI_DMA_MASTER_U0_ap_ready)
);

assign AXI_DMA_MASTER_U0_ap_continue = 1'b1;

assign AXI_DMA_MASTER_U0_ap_start = start_for_AXI_DMA_MASTER_U0_empty_n;

assign AXI_DMA_MASTER_U0_start_full_n = 1'b1;

assign AXI_DMA_MASTER_U0_start_write = 1'b0;

assign AXI_DMA_SLAVE_U0_ap_continue = 1'b1;

assign AXI_DMA_SLAVE_U0_ap_start = 1'b1;

assign FC_1u_1024u_64u_U0_ap_continue = 1'b1;

assign FC_1u_1024u_64u_U0_ap_start = start_for_FC_1u_1024u_64u_U0_empty_n;

assign FC_1u_64u_10u_U0_ap_continue = 1'b1;

assign FC_1u_64u_10u_U0_ap_start = start_for_FC_1u_64u_10u_U0_empty_n;

assign SCIG_1_U0_ap_continue = 1'b1;

assign SCIG_1_U0_ap_start = start_for_SCIG_1_U0_empty_n;

assign SCIG_2_U0_ap_continue = 1'b1;

assign SCIG_2_U0_ap_start = start_for_SCIG_2_U0_empty_n;

assign SCIG_U0_ap_continue = 1'b1;

assign SCIG_U0_ap_start = start_for_SCIG_U0_empty_n;

assign SMM_1u_75u_32u_U0_ap_continue = 1'b1;

assign SMM_1u_75u_32u_U0_ap_start = start_for_SMM_1u_75u_32u_U0_empty_n;

assign SMM_1u_800u_32u_U0_ap_continue = 1'b1;

assign SMM_1u_800u_32u_U0_ap_start = start_for_SMM_1u_800u_32u_U0_empty_n;

assign SMM_1u_800u_64u_U0_ap_continue = 1'b1;

assign SMM_1u_800u_64u_U0_ap_start = start_for_SMM_1u_800u_64u_U0_empty_n;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b0;

assign in_stream_TREADY = AXI_DMA_SLAVE_U0_in_stream_TREADY;

assign out_stream_TDATA = AXI_DMA_MASTER_U0_out_stream_TDATA;

assign out_stream_TLAST = AXI_DMA_MASTER_U0_out_stream_TLAST;

assign out_stream_TVALID = AXI_DMA_MASTER_U0_out_stream_TVALID;

assign pool_2u_32u_16u_U0_ap_continue = 1'b1;

assign pool_2u_32u_16u_U0_ap_start = start_for_pool_2u_32u_16u_U0_empty_n;

assign pool_2u_32u_32u_U0_ap_continue = 1'b1;

assign pool_2u_32u_32u_U0_ap_start = start_for_pool_2u_32u_32u_U0_empty_n;

assign pool_2u_64u_8u_U0_ap_continue = 1'b1;

assign pool_2u_64u_8u_U0_ap_start = start_for_pool_2u_64u_8u_U0_empty_n;

assign start_for_AXI_DMA_MASTER_U0_din = 1'b1;

assign start_for_FC_1u_1024u_64u_U0_din = 1'b1;

assign start_for_FC_1u_64u_10u_U0_din = 1'b1;

assign start_for_SCIG_1_U0_din = 1'b1;

assign start_for_SCIG_2_U0_din = 1'b1;

assign start_for_SCIG_U0_din = 1'b1;

assign start_for_SMM_1u_75u_32u_U0_din = 1'b1;

assign start_for_SMM_1u_800u_32u_U0_din = 1'b1;

assign start_for_SMM_1u_800u_64u_U0_din = 1'b1;

assign start_for_pool_2u_32u_16u_U0_din = 1'b1;

assign start_for_pool_2u_32u_32u_U0_din = 1'b1;

assign start_for_pool_2u_64u_8u_U0_din = 1'b1;

endmodule //cifar_10
