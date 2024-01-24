@Generate Fibonacci Series and store them in an array / memory location.

.data
N:	.word 10
FIB_ARR:	.word 0,0,0,0,0,0,0,0,0,0

.text
LDR R0,=N
LDR R1, [R0]
MOV R2, #0
MOV R3, #1
LDR R4,=FIB_ARR
STR R2, [R4], #4
STR R3, [R4], #4

LOOP:
	CMP R1, #0
	BEQ END_LOOP

	ADD R5, R2, R3
	STR R5, [R4], #4
	MOV R2, R3
	MOV R3, R5
	SUB R1, R1, #1
	B LOOP

END_LOOP:
	SWI 0x011
.end