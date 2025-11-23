; Setup for a new letter

; home
M98 P"homeall.g"

; set WCS1 to workhold zero
M98 P"0:/macros/set_wcs1_origin_to_workhold_zero.g"

; set WCS2 as the current work coordinate system
G54

; go get setup over the thing
G0 X45 Y55 Z25
G1 Z5

; probe
M98 p"0:/macros/z_probe.g"