; Ender 3 Custom End G-code
G4 ; Wait
M220 S100 ; Reset Speed factor override percentage to default (100%)
M221 S100 ; Reset Extrude factor override percentage to default (100%)
G91 ; Set coordinates to relative
G1 F1800 E-3 ; Retract filament 3 mm to prevent oozing
G1 F3000 Z20 ; Move Z Axis up 20 mm to allow filament ooze freely
G90 ; Set coordinates to absolute
G1 X0 Y{machine_depth} F1000 ; Move Heat Bed to the front for easy print removal
M84 ; Disable stepper motors
M300 S440 P200 ;
M300 S660 P250 ;
M300 S880 P300 ;
; End of custom end GCode
