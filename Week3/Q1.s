@Write a program to add two numbers by reading them from memory and store the result back to the memory.

.data
A:	.word 10
B:	.word 20
C:	.word 0

.text
LDR R0,=A
LDR R1,=B
LDR R2,=C

LDR R3, [R0]
LDR R4, [R1]
ADD R5, R3, R4
STR R5, [R2]
.end
