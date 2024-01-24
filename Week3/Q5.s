@Write a program to add array of ten 16 bit numbers taking data from memory location stored as byte data @(use .byte to store the data instead of .word)

.data
A:	.hword 0x10, 0x20, 0x30, 0x40, 0x50, 0x60, 0x70, 0x80, 0x90, 0x100
SUM:	.word 0

.text
LDR R1,=A
LDR R2,=SUM

MOV R4, #0
MOV R5, #1

LOOP:
	LDRH R3, [R1]
	ADD R4, R4, R3
	ADD R1, R1, #2
	ADD R5, R5, #1

	CMP R5, #11
	BNE LOOP

	STRH R4, [R2]
.end