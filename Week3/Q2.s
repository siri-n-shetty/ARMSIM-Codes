@Write a program to Check if a given set of numbers are even or odd. 
@Then store even and odd numbers in two different  memory locations.

.data
A:	.word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
ODD:	.space 40
EVEN:	.space 40

.text
LDR R0,=A
LDR R1,=ODD
LDR R2,=EVEN
MOV R3,#10

LOOP:
	LDR R4, [R0], #4	@Load elements from A to R4 and then post-increment
	ANDS R5, R4, #1	@Check if the LSB bit of number in R4 is one
	BEQ EVEN_NO

	STR R4, [R1], #4	@Store odd no. in ODD and post-increment
	B CHECKLOOP

EVEN_NO:
	STR R4, [R2], #4	@Store even no. in EVEN  and post-increment

CHECKLOOP:
	SUBS R3, R3, #1	@Decrement the count after checking each no. in the array
	BNE LOOP	@If R3 is not zer, loop again
.end