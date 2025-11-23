; Probe in Z-x-y and reset 0

;
; Prologue
;
G91                     ; set relative mode

; Z Probe
G10 L20 P1 X50 Y50 Z50  ; set z to 50 so it will probe in the right direction. 
G38.2 Z P0              ; probe the z
G10 L20 P1 Z25.4        ; set the z-height of WCS 1 to 1 inch
G0 Z2.5                 ; rize up a little bit

;
; X Probe
;
G38.2 X P0              ; probe the x
G10 L20 P1 X3.175       ; set the x coordinate to 1/8" or 3.175 to account for the 1/4" pin
G0 X10                  ; move out 10mm along the x axis

;
; Y Probe
;
G38.2 Y P0              ; probe the y
G10 L20 P1 Y3.175       ; set the x coordinate to 1/8" or 3.175 to account for the 1/4" pin
G0 Y10 Z50              ; move out 10mm in the Y and up 50mm in z so we can remove the z-touch plate

;
; Epilog
;
G90                     ; set absolute mode 

