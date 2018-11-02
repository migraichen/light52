# run-file 
    
variable SimTime 120ms  
  
# Create and map the work library  
vlib work  
vmap work work  
  
# Compile the VHDL files 
vcom -93 ../modules/light52_pkg.vhdl
vcom -93 ../modules/light52_ucode_pkg.vhdl
#vcom -93 ../../test/blinker/obj_code_pkg.vhdl
vcom -93 ../../test/FreeRTOS/obj_code_pkg.vhdl

vcom -93 ../modules/light52_muldiv.vhdl
vcom -93 ../modules/light52_alu.vhdl
vcom -93 ../modules/light52_cpu.vhdl
vcom -2008 ../modules/light52_timer.vhdl
vcom -93 ../modules/light52_uart.vhdl

vcom -2008 ../modules/light52_mcu.vhdl
#vcom -93 ../megafunctions/pll.vhd
vcom -93 ../light52_modelsim_top.vhd 
vcom -93 light52_modelsim_tb.vhd 
   
# Load the simulator with optimizations turned off 
vsim -novopt work.light52_modelsim_tb 
    
do wave.do
  
run $SimTime  
  
wave zoomrange 0 $SimTime 
  
# End simulation 
#quit -sim 
