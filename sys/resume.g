; resume.g
; called to retract a physical Z probe
;

G1 R1 X0 Y0 Z5 F6000 ; go to 5mm above position of the last move
G1 R1 X0 Y0 Z0 ; go back to the last print move

