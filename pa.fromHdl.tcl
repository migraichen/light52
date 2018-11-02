
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name light52 -dir "/home/michi/workspace/light52/planAhead_run_1" -part xc6slx45csg324-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "/home/michi/workspace/light52/vhdl/light52_top.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {vhdl/modules/light52_pkg.vhdl}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {vhdl/modules/light52_ucode_pkg.vhdl}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {vhdl/modules/light52_muldiv.vhdl}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {vhdl/modules/light52_alu.vhdl}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {vhdl/modules/light52_uart.vhdl}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {vhdl/modules/light52_timer.vhdl}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {vhdl/modules/light52_cpu.vhdl}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {test/FreeRTOS/obj_code_pkg.vhdl}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {vhdl/modules/light52_mcu.vhdl}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {vhdl/light52_top.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top light52_top $srcset
add_files [list {/home/michi/workspace/light52/vhdl/light52_top.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx45csg324-2
