# Run from any directory: vivado -mode batch -source scripts/build.tcl -tclargs check
set root [file normalize [file join [file dirname [info script]] ..]]
set mode [lindex $argv 0]
if {$mode eq ""} { set mode check }
if {$mode ni {check synth bitstream}} {
    puts stderr {Usage: build.tcl [-tclargs check|synth|bitstream]}
    exit 1
}
set output [file join $root build]
file mkdir $output
cd $output

if {[catch {
    open_project -read_only [file join $root vivado CMOS_OV6946_HDMI.xpr]
    # Use a writable build copy so include paths and generated IP stay local.
    save_project_as image_preprocess [file join $output project] -force
    set_property include_dirs [list [file join $root src lcd_24bit_ip]] [get_filesets sources_1]
    generate_target all [get_ips]
    update_compile_order -fileset sources_1
    report_ip_status -file [file join $output ip_status.rpt]
    if {$mode eq "check"} {
        set ip_runs [get_runs {asyn_fifo_synth_1 bram_ture_dual_port_synth_1 syn_fifo_w8d2048_synth_1}]
        launch_runs $ip_runs -jobs 3
        foreach ip_run $ip_runs {
            wait_on_run $ip_run
            if {[get_property PROGRESS $ip_run] ne "100%"} {
                error "IP synthesis failed: $ip_run"
            }
        }
        # Elaborate the actual hierarchy; vendor IP may remain black boxes here.
        synth_design -rtl -name rtl_check -top FPGA_Test -part xc7a100tfgg676-2
    } else {
        launch_runs synth_1 -jobs 4
        wait_on_run synth_1
        if {[get_property PROGRESS [get_runs synth_1]] ne "100%"} {
            error "Synthesis failed; inspect build/project/*.runs/synth_1/runme.log"
        }
        if {$mode eq "bitstream"} {
            launch_runs impl_1 -to_step write_bitstream -jobs 4
            wait_on_run impl_1
            if {[get_property PROGRESS [get_runs impl_1]] ne "100%"} {
                error "Implementation failed; inspect build/project/*.runs/impl_1/runme.log"
            }
            open_run impl_1
            report_timing_summary -file [file join $output timing_summary.rpt]
            report_utilization -file [file join $output utilization.rpt]
        }
    }
    close_project
} detail]} {
    puts stderr "BUILD FAILED: $detail"
    exit 1
}
puts "BUILD PASS: $mode"
exit 0
