; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)
; Also called by slicer end gcode by M0
;

; Finish move queue
M400 S1

; COMMAND_COOLANT_OFF


; COMMAND_STOP_SPINDLE
M5
M98 P"0:/macros/router_off.g"

G53 G0 Z175

; Finish move queue
; Without this the machine will be unable to move after stop.g completes
; See: https://github.com/Duet3D/RepRapFirmware/issues/1192
; This should be fixed in 3.6.2?
; https://github.com/Duet3D/RepRapFirmware/milestone/20
; 
M400 S1
