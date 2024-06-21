@Write an ALP  to perform Convolution using MLA  instruction 
@(Addition of multiplication of respective numbers of loc A and loc B)

.data
A: 	.word 1,2,3,4,5,6,7,8,9,10
B:	.word 10,9,8,7,6,5,4,3,2,1

.text
MAIN:
	LDR R0,=A
	LDR R1,=B
	MOV R2, #10
	MOV R5,#0

LOOP:
	LDR R3, [R0], #4
	LDR R4, [R1], #4
	MLA R5, R3, R4, R5
	SUBS R2, R2, #1
	BNE LOOP
.end