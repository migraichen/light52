
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name light52 -dir "/home/michi/workspace/light52/planAhead_run_2" -part xc6slx45csg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/michi/workspace/light52/light52_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/michi/workspace/light52} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "/home/michi/workspace/light52/vhdl/light52_top.ucf" [current_fileset -constrset]
add_files [list {/home/michi/workspace/light52/vhdl/light52_top.ucf}] -fileset [get_property constrset [current_run]]
link_design
