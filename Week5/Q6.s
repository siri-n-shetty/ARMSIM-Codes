@1.Write an ALP to find whether a given character is present in a string. 
@If present, find how many times the given character is present in a string.

.data
STR:	.asciz "Hello World"
CHAR:	.asciz "w"

.text
LDR R0,=STR
LDR R1,=CHAR
MOV R5, #00
LDRB R3, [R1]

LOOP:
	LDRB R2, [R0], #1
	CMP R2, #0
	BEQ EXIT
	CMP R2, R3
	BNE LOOP
	ADD R5, R5, #1
	B LOOP

EXIT:
	SWI 0x011
.end