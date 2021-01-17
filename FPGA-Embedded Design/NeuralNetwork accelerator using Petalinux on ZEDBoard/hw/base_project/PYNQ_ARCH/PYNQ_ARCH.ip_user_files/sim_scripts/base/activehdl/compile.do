vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_4
vlib activehdl/lib_fifo_v1_0_13
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_21
vlib activehdl/axi_sg_v4_1_12
vlib activehdl/axi_dma_v7_1_20
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/axis_register_slice_v1_1_19
vlib activehdl/axis_switch_v1_1_19
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_5
vlib activehdl/processing_system7_vip_v1_0_7
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_19
vlib activehdl/axi_data_fifo_v2_1_18
vlib activehdl/axi_crossbar_v2_1_20
vlib activehdl/axi_protocol_converter_v2_1_19
vlib activehdl/axi_clock_converter_v2_1_18
vlib activehdl/blk_mem_gen_v8_4_3
vlib activehdl/axi_dwidth_converter_v2_1_19
vlib activehdl/axi_mmu_v2_1_17

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_4 activehdl/fifo_generator_v13_2_4
vmap lib_fifo_v1_0_13 activehdl/lib_fifo_v1_0_13
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_21 activehdl/axi_datamover_v5_1_21
vmap axi_sg_v4_1_12 activehdl/axi_sg_v4_1_12
vmap axi_dma_v7_1_20 activehdl/axi_dma_v7_1_20
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_19 activehdl/axis_register_slice_v1_1_19
vmap axis_switch_v1_1_19 activehdl/axis_switch_v1_1_19
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 activehdl/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 activehdl/processing_system7_vip_v1_0_7
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_19 activehdl/axi_register_slice_v2_1_19
vmap axi_data_fifo_v2_1_18 activehdl/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 activehdl/axi_crossbar_v2_1_20
vmap axi_protocol_converter_v2_1_19 activehdl/axi_protocol_converter_v2_1_19
vmap axi_clock_converter_v2_1_18 activehdl/axi_clock_converter_v2_1_18
vmap blk_mem_gen_v8_4_3 activehdl/blk_mem_gen_v8_4_3
vmap axi_dwidth_converter_v2_1_19 activehdl/axi_dwidth_converter_v2_1_19
vmap axi_mmu_v2_1_17 activehdl/axi_mmu_v2_1_17

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/ISE_Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/ISE_Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/ISE_Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/ISE_Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../../base/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../../base/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../../base/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../../base/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_13 -93 \
"../../../../../base/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../../base/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../../base/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_21 -93 \
"../../../../../base/ipshared/e644/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_12 -93 \
"../../../../../base/ipshared/91f3/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_20 -93 \
"../../../../../base/ipshared/260a/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/base/ip/base_axi_dma_0_0/sim/base_axi_dma_0_0.vhd" \
"../../../bd/base/ip/base_axi_dma_1_0/sim/base_axi_dma_1_0.vhd" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../../base/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_19  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../../base/ipshared/635c/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axis_switch_v1_1_19  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../../base/ipshared/ac53/hdl/axis_switch_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/base/ip/base_axis_switch_0_0/sim/base_axis_switch_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../../base/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../../base/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../../base/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/base/ip/base_ps7_0/sim/base_ps7_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../../base/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/base/ip/base_rst_ps7_100M_0/sim/base_rst_ps7_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
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

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../../base/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../../base/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../../base/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../../base/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
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

vlog -work axi_protocol_converter_v2_1_19  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../../base/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_18  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../../base/ipshared/ac9d/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_3  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../../base/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_19  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../../base/ipshared/e578/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/base/ip/base_auto_us_0/sim/base_auto_us_0.v" \
"../../../bd/base/ip/base_auto_us_1/sim/base_auto_us_1.v" \
"../../../bd/base/ip/base_auto_us_2/sim/base_auto_us_2.v" \
"../../../bd/base/ip/base_auto_us_3/sim/base_auto_us_3.v" \
"../../../bd/base/ip/base_auto_pc_0/sim/base_auto_pc_0.v" \
"../../../bd/base/ip/base_auto_pc_1/sim/base_auto_pc_1.v" \

vlog -work axi_mmu_v2_1_17  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../../base/ipshared/b5b8/hdl/axi_mmu_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../base/ipshared/8713/hdl" "+incdir+../../../../../base/ipshared/ec67/hdl" "+incdir+../../../../../base/ipshared/8c62/hdl" "+incdir+../../../../../base/ip/base_ps7_0" "+incdir+C:/ISE_Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/base/ip/base_s00_mmu_0/sim/base_s00_mmu_0.v" \
"../../../bd/base/sim/base.v" \

vlog -work xil_defaultlib \
"glbl.v"

