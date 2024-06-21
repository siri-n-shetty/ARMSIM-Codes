@Write an ALP  to find the  length of a given string

.data
A:	.asciz "Hello"

.text
LDR R0,=A
MOV R1, #0

LOOP:
	LDRB R2, [R0], #1
	CMP R2, #0
	BEQ CLOSE
	ADD R1, R1, #1
	B LOOP

CLOSE:
	SWI 0X011
.end