; homeall.g
; called to home all axes
;

M581 T0 P-1         ; Disable endstop triggers so we can zero

G91                 ; relative mode
G1 H1 Z243 F3000    ; move Z towards the switch until it triggers
G1 H2 Z-4 F600      ; move Z back 5mm
G1 H1 Z10           ; move Z slowly towards the switch until it triggers
G1 H2 Z-50 F3000     ; move Z down by 50 so we untrigger the endstop

G1 H1 X-788 Y-997 F3000 ; move up to 240mm in the -X and -Y directions until the homing switches are triggered
G1 H2 X4 Y4 F600    ; move slowly 6mm in +X and +Y directions
G1 H1 X-10 Y-10     ; move up to 10mm in the -X and -Y directions until the homing switches are triggered
G1 H2 X10 Y10 F3000

G90 ; back to absolute mode


M581 T0 P0:1 X Y Z S1 ; Stop when endstops are reached

;
; Set the Wcs x,y origin to the workhold position with a z of 100
;

G54                           ;SET WCS1 Activ
G10 L2 P1 X119.7 Y99.2 Z75    ;WCS1
G10 L2 P2 X119.7 Y449.2 Z75   ;WCS2
G10 L2 P3 X419.7 Y449.2 Z75   ;WCS3
G10 L2 P4 X419.7 Y99.2 Z75    ;WCS4


