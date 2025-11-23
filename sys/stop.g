; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)
; Also called by slicer end gcode by M0
;

; Finish move queue
M400

; COMMAND_COOLANT_OFF


; COMMAND_STOP_SPINDLE
M98 P"0:/macros/router_off.g"
M5
G0 Z150.000