@Write a program to classify the given set of numbers as positive, negative or zero and 
@also store them in different memory locations.

.data
A:	.word 1,0,-2,4,5,0,-9,6,-6,10
POS:	.space 40
NEG:	.space 40
ZERO:	.space 40

.text
LDR R0,=A
LDR R1,=POS
LDR R2,=NEG
LDR R3,=ZERO
MOV R4, #10		@Count fir the initial array elements 

LOOP:
	LDR R8, [R0], #4
	CMP R8, #0	@Comapre with 0

	BGT POSITIVE	@Greater than 0, branch to POSITIVE
	BLT NEGATIVE	@Lesser than 0, branch to NEGATIVE
	@Else, its zero

	STR R8, [R3], #4	@Store 0 in ZERO and post-increment R3
	B CHECKLOOP

POSITIVE:
	STR R8, [R1], #4
	B CHECKLOOP

NEGATIVE:
	STR R8, [R2], #4

CHECKLOOP:
	SUBS R4, R4, #1
	BNE LOOP
.end
