@ Write an ALP to compare the value of r0 and r1, add if r0=r1 else subtract

.text
MOV R0, #5
MOV R1, #6
CMP R0, R1
BEQ ADDITION
	SUB R2, R0, R1
B SKIP

ADDITION:
	ADD R2, R0, R1
SKIP:
	SWI 0x011
 
.end
