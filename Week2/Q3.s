@Write a program to find the factorial of a given number.

.text
MOV R0, #6
MOV R1, #1
MOV R2, #1

FACTORIAL_LOOP:
	CMP R2, R0
	BGT FACTORIAL_FINISH
	MUL R1, R1, R2
	ADD R2, R2, #1
	B FACTORIAL_LOOP

FACTORIAL_FINISH:
	SWI 0X011
.end