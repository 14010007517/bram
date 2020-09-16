vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_4
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_4
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_20
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_18
vlib modelsim_lib/msim/fifo_generator_v13_2_3
vlib modelsim_lib/msim/axi_data_fifo_v2_1_17
vlib modelsim_lib/msim/axi_crossbar_v2_1_19
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/blk_mem_gen_v8_4_2
vlib modelsim_lib/msim/blk_mem_gen_v8_3_6
vlib modelsim_lib/msim/axi_bram_ctrl_v4_1_0
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_18
vlib modelsim_lib/msim/axi_clock_converter_v2_1_17
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_18

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 modelsim_lib/msim/axi_vip_v1_1_4
vmap zynq_ultra_ps_e_vip_v1_0_4 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_4
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_20 modelsim_lib/msim/axi_gpio_v2_0_20
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_18 modelsim_lib/msim/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 modelsim_lib/msim/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 modelsim_lib/msim/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 modelsim_lib/msim/axi_crossbar_v2_1_19
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap blk_mem_gen_v8_4_2 modelsim_lib/msim/blk_mem_gen_v8_4_2
vmap blk_mem_gen_v8_3_6 modelsim_lib/msim/blk_mem_gen_v8_3_6
vmap axi_bram_ctrl_v4_1_0 modelsim_lib/msim/axi_bram_ctrl_v4_1_0
vmap axi_protocol_converter_v2_1_18 modelsim_lib/msim/axi_protocol_converter_v2_1_18
vmap axi_clock_converter_v2_1_17 modelsim_lib/msim/axi_clock_converter_v2_1_17
vmap axi_dwidth_converter_v2_1_18 modelsim_lib/msim/axi_dwidth_converter_v2_1_18

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_4 -L zynq_ultra_ps_e_vip_v1_0_4 -L xilinx_vip "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L zynq_ultra_ps_e_vip_v1_0_4 -L xilinx_vip "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"/home/alvin/vivado/2018.3/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/alvin/vivado/2018.3/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/home/alvin/vivado/2018.3/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4 -64 -incr -sv -L axi_vip_v1_1_4 -L zynq_ultra_ps_e_vip_v1_0_4 -L xilinx_vip "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_4 -64 -incr -sv -L axi_vip_v1_1_4 -L zynq_ultra_ps_e_vip_v1_0_4 -L xilinx_vip "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_20 -64 -93 \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_axi_gpio_0_0/sim/Base_Zynq_MPSoC_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 -incr "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 -incr "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19 -64 -incr "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_xbar_0/sim/Base_Zynq_MPSoC_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_rst_ps8_0_99M_0/sim/Base_Zynq_MPSoC_rst_ps8_0_99M_0.vhd" \

vlog -work blk_mem_gen_v8_4_2 -64 -incr "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_blk_mem_gen_0_0/sim/Base_Zynq_MPSoC_blk_mem_gen_0_0.v" \

vlog -work blk_mem_gen_v8_3_6 -64 -incr "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_1_0 -64 -93 \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/27fe/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_axi_bram_ctrl_0_0/sim/Base_Zynq_MPSoC_axi_bram_ctrl_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Base_Zynq_MPSoC/sim/Base_Zynq_MPSoC.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_axi_bram_ctrl_1_0/sim/Base_Zynq_MPSoC_axi_bram_ctrl_1_0.vhd" \

vlog -work axi_protocol_converter_v2_1_18 -64 -incr "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_17 -64 -incr "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/693a/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_18 -64 -incr "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/0815/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/ec67/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ipshared/00a3/hdl" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_bram.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0" "+incdir+/home/alvin/vivado/2018.3/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_ds_0/sim/Base_Zynq_MPSoC_auto_ds_0.v" \
"../../../bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_pc_0/sim/Base_Zynq_MPSoC_auto_pc_0.v" \
"../../../bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_ds_1/sim/Base_Zynq_MPSoC_auto_ds_1.v" \
"../../../bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_ds_2/sim/Base_Zynq_MPSoC_auto_ds_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

