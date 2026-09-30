set root [file normalize [file join [file dirname [info script]] ..]]
set output [file join $root build sim]
file mkdir $output
cd $output
if {[catch {
    create_project core_sim $output -force -part xc7a100tfgg676-2
    add_files -fileset sim_1 [list \
        [file join $root src Video_Image_Processor unsigned_divider.v] \
        [file join $root src io lag_module.v] \
        [file join $root tests tb_core.sv]]
    set_property top tb_core [get_filesets sim_1]
    set_property xsim.simulate.runtime 0ns [get_filesets sim_1]
    launch_simulation
    run all
    if {[get_value /tb_core/passed] ne "1"} { error "Core simulation did not pass" }
    close_sim
    close_project
} detail]} {
    puts stderr "SIM FAILED: $detail"
    exit 1
}
puts "SIM PASS"
exit 0
