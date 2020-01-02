-makelib ies_lib/xilinx_vip -sv \
  "C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "C:/ISE_Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/ISE_Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/ISE_Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/ISE_Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../../base/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../../base/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../../base/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../../base/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/lib_fifo_v1_0_13 \
  "../../../../../base/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../../base/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../../base/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_datamover_v5_1_21 \
  "../../../../../base/ipshared/e644/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_sg_v4_1_12 \
  "../../../../../base/ipshared/91f3/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib ies_lib/axi_dma_v7_1_20 \
  "../../../../../base/ipshared/260a/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/base/ip/base_axi_dma_0_0/sim/base_axi_dma_0_0.vhd" \
  "../../../bd/base/ip/base_axi_dma_1_0/sim/base_axi_dma_1_0.vhd" \
-endlib
-makelib ies_lib/axis_infrastructure_v1_1_0 \
  "../../../../../base/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axis_register_slice_v1_1_19 \
  "../../../../../base/ipshared/635c/hdl/axis_register_slice_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axis_switch_v1_1_19 \
  "../../../../../base/ipshared/ac53/hdl/axis_switch_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/base/ip/base_axis_switch_0_0/sim/base_axis_switch_0_0.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../../base/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_5 -sv \
  "../../../../../base/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../../base/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/base/ip/base_ps7_0/sim/base_ps7_0.v" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../../base/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/base/ip/base_rst_ps7_100M_0/sim/base_rst_ps7_100M_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../../base/ipshared/2e58/hdl/verilog/AXI_DMA_MASTER.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/AXI_DMA_SLAVE.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/cifar_10_mac_mula3i2.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/cifar_10_mul_32s_6jw.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/cifar_10_mul_32s_bkb.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/cifar_10_mul_32s_bXr.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/cifar_10_mul_32s_cud.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/cifar_10_mul_mul_2iS.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/cifar_10_urem_7ns1iI.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/FC_1u_64u_10u_s.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/FC_1u_64u_10u_s_AdQK.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/FC_1u_64u_10u_s_BdRK.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/FC_1u_1024u_64u_s.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/fifo_w32_d2_A.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/fifo_w32_d50_A.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/pool_2u_32u_16u_s.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/pool_2u_32u_16u_sbVr.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/pool_2u_32u_32u_s.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/pool_2u_32u_32u_s4jc.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/pool_2u_32u_32u_s5jm.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/pool_2u_64u_8u_s.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/pool_2u_64u_8u_s_cNA.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/SCIG.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/SCIG_1.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/SCIG_2.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/SCIG_2_inputBuf_V.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/SCIG_inElem_V.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/SCIG_inputBuf_V.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/SMM_1u_75u_32u_s.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/SMM_1u_75u_32u_s_dEe.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/SMM_1u_75u_32u_s_eOg.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/SMM_1u_800u_32u_s.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/SMM_1u_800u_32u_s7jG.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/SMM_1u_800u_32u_s8jQ.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/SMM_1u_800u_64u_s.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/SMM_1u_800u_64u_sbZs.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/start_for_AXI_DMAeuR.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/start_for_FC_1u_1esQ.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/start_for_FC_1u_6etR.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/start_for_pool_2uenQ.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/start_for_pool_2uepQ.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/start_for_pool_2uerQ.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/start_for_SCIG_1_U0.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/start_for_SCIG_2_U0.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/start_for_SCIG_U0.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/start_for_SMM_1u_emP.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/start_for_SMM_1u_eoQ.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/start_for_SMM_1u_eqQ.v" \
  "../../../../../base/ipshared/2e58/hdl/verilog/cifar_10.v" \
  "../../../bd/base/ip/base_cifar_10_0_0/sim/base_cifar_10_0_0.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../../base/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_19 \
  "../../../../../base/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_18 \
  "../../../../../base/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_20 \
  "../../../../../base/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/base/ip/base_xbar_0/sim/base_xbar_0.v" \
  "../../../bd/base/ip/base_xbar_1/sim/base_xbar_1.v" \
  "../../../../../base/ipshared/838b/hdl/verilog/simple_sum.v" \
  "../../../bd/base/ip/base_simple_sum_0_1/sim/base_simple_sum_0_1.v" \
  "../../../../../base/ipshared/a565/hdl/verilog/stream_mult.v" \
  "../../../../../base/ipshared/a565/hdl/verilog/stream_mult_mul_32s_32s_32_6.v" \
  "../../../bd/base/ip/base_stream_mult_0_1/sim/base_stream_mult_0_1.v" \
  "../../../../../base/ipshared/dc6c/hdl/verilog/mult_constant.v" \
  "../../../../../base/ipshared/dc6c/hdl/verilog/mult_constant_AXILiteS_s_axi.v" \
  "../../../../../base/ipshared/dc6c/hdl/verilog/mult_constant_mul_32s_32s_32_6.v" \
  "../../../bd/base/ip/base_mult_constant_0_1/sim/base_mult_constant_0_1.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_19 \
  "../../../../../base/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_clock_converter_v2_1_18 \
  "../../../../../base/ipshared/ac9d/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_3 \
  "../../../../../base/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/axi_dwidth_converter_v2_1_19 \
  "../../../../../base/ipshared/e578/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/base/ip/base_auto_us_0/sim/base_auto_us_0.v" \
  "../../../bd/base/ip/base_auto_us_1/sim/base_auto_us_1.v" \
  "../../../bd/base/ip/base_auto_us_2/sim/base_auto_us_2.v" \
  "../../../bd/base/ip/base_auto_us_3/sim/base_auto_us_3.v" \
  "../../../bd/base/ip/base_auto_pc_0/sim/base_auto_pc_0.v" \
  "../../../bd/base/ip/base_auto_pc_1/sim/base_auto_pc_1.v" \
-endlib
-makelib ies_lib/axi_mmu_v2_1_17 \
  "../../../../../base/ipshared/b5b8/hdl/axi_mmu_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/base/ip/base_s00_mmu_0/sim/base_s00_mmu_0.v" \
  "../../../bd/base/sim/base.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

