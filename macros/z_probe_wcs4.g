; Probe in Z and reset 0

G91          		; Set Relative Mode
G10 L20 P1 Z50 		; set z to 50 so it will probe in the right direction. 
G38.2 Z0 K0         ; probe in the z direction
G10 L20 P4 Z25.4    ; set the z-height of WCS 1 to 1 inch
G0 Z30       		; rise up around 25mm to remove the z-plate
G90          		; Set Absolute Mode