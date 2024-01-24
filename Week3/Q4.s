@Write a program to find the largest number from a given set of numbers.(Unsorted Array)

.data 
A:	.word 12, 7, 9, 21, 6, 14

.text
LDR r0,=A
LDR R1, [R0], #4		@Load the first element into R1
MOV R3, #5		@Count of the remianing no. of elements in the array

FIND_MAX:
	LDR R2, [R0], #4	@Load the next element of A into R2
	CMP R1, R2	@Compare current max with the new element
	BGT SKIP	@If R1 (current max) is greater, skip updating
	MOV R1, R2	@Update R1 with the new max

SKIP:
	SUBS R3, R3, #1
	BNE FIND_MAX
.end