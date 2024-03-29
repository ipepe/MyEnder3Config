; Ender 3 Custom Start G-code
M300 S500 P100 ; play sound to notify that print started

M140 S{material_bed_temperature}
M104 S{material_print_temperature}
M190 S{material_bed_temperature}
M109 S{material_print_temperature}

M300 S500 P200 ; play sound to notify that print started

G28 ; Home all axes
M420 S1; retreive mesh bed leveling
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y40 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y40 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed

; End of custom start GCode