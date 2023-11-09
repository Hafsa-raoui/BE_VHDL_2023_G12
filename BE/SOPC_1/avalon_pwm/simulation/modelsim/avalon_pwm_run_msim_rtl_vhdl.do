transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib pwm_av
vmap pwm_av pwm_av
vlog -vlog01compat -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_mm_interconnect_0.v}
vlog -vlog01compat -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -vlog01compat -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_leds.v}
vlog -vlog01compat -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_jtag_uart_0.v}
vlog -vlog01compat -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_bp.v}
vlog -vlog01compat -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_RAM.v}
vlog -vlog01compat -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_CPU.v}
vlog -vlog01compat -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_CPU_cpu.v}
vlog -vlog01compat -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_CPU_cpu_debug_slave_sysclk.v}
vlog -vlog01compat -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_CPU_cpu_debug_slave_tck.v}
vlog -vlog01compat -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_CPU_cpu_debug_slave_wrapper.v}
vlog -vlog01compat -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_CPU_cpu_test_bench.v}
vlog -sv -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_irq_mapper.sv}
vlog -sv -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_mm_interconnect_0_rsp_demux.sv}
vlog -sv -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_mm_interconnect_0_router_002.sv}
vlog -sv -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/pwm_av_mm_interconnect_0_router.sv}
vlog -sv -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/altera_merlin_master_agent.sv}
vlog -sv -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work pwm_av +incdir+C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/altera_merlin_master_translator.sv}
vcom -93 -work pwm_av {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/pwm_av.vhd}
vcom -93 -work pwm_av {C:/Users/Etudiant/Desktop/avalon_pwm/pwm_av/synthesis/submodules/avalon_pwm.vhd}

