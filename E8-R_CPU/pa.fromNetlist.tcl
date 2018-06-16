
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name R_CPU -dir "D:/workplace/verilog/E8-R_CPU/planAhead_run_4" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/workplace/verilog/E8-R_CPU/R_CPU_Unit.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/workplace/verilog/E8-R_CPU} {ipcore_dir} }
add_files [list {ipcore_dir/RAM_B.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "R_CPU_Unit_IC.ucf" [current_fileset -constrset]
add_files [list {R_CPU_Unit_IC.ucf}] -fileset [get_property constrset [current_run]]
link_design
