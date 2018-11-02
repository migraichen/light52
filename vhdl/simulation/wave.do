onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label sysclk /light52_modelsim_tb/sysclk
add wave -noupdate -label rst /light52_modelsim_tb/rst
add wave -noupdate -divider UART
add wave -noupdate -label RX /light52_modelsim_tb/socket_light52/rxd_in
add wave -noupdate -label TX /light52_modelsim_tb/socket_light52/txd_out
add wave -noupdate -divider Timer
add wave -noupdate -label clk /light52_modelsim_tb/socket_light52/socket_light52_mcu/timer/clk
add wave -noupdate -label reset /light52_modelsim_tb/socket_light52/socket_light52_mcu/timer/reset
add wave -noupdate -label wr_i /light52_modelsim_tb/socket_light52/socket_light52_mcu/timer/wr_i
add wave -noupdate -label irq_o /light52_modelsim_tb/socket_light52/socket_light52_mcu/timer/irq_o
add wave -noupdate -label data_i -radix hexadecimal /light52_modelsim_tb/socket_light52/socket_light52_mcu/timer/data_i
add wave -noupdate -label data_o -radix hexadecimal /light52_modelsim_tb/socket_light52/socket_light52_mcu/timer/data_o
add wave -noupdate -label ce_i /light52_modelsim_tb/socket_light52/socket_light52_mcu/timer/ce_i
add wave -noupdate -label addr_i -radix hexadecimal /light52_modelsim_tb/socket_light52/socket_light52_mcu/timer/addr_i
add wave -noupdate -divider State
add wave -noupdate -label ps /light52_modelsim_tb/socket_light52/socket_light52_mcu/cpu/ps
add wave -noupdate -label ns /light52_modelsim_tb/socket_light52/socket_light52_mcu/cpu/ns
add wave -noupdate -divider CODE
add wave -noupdate -label code_addr -radix hexadecimal /light52_modelsim_tb/socket_light52/socket_light52_mcu/code_addr
add wave -noupdate -label code_rd -radix hexadecimal /light52_modelsim_tb/socket_light52/socket_light52_mcu/code_rd
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 7} {1475562220000 ps} 0} {{Cursor 8} {15991569275 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 136
configure wave -valuecolwidth 97
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {0 ps} {83906382 ns}
