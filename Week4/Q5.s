.data
A:	.word 10, 20, 30, 40, 50, 60, 70, 80
KEY:	.word 50
COUNT:	.word 8

.text
	LDR R0, =A
	LDR R1,=KEY
	LDR R1, [R1]
	MOV R2, #0
	LDR R3,=COUNT
	LDR R3, [R3]

LOOP:
	LDR R4, [R0], #4
	CMP R4, R1
	BEQ FOUND
	SUBS R3, R3, #1
	BNE LOOP
	B DONE

FOUND: 
	MOV R2, #1

DONE:
	SWI 0X011
.end