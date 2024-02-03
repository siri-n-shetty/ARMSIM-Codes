.data
matrix1:
	.word 10, 20, 30
	.word 40, 50, 60
	.word 70, 80, 90

matrix2:
	.word 1, 2, 3
	.word 4, 5, 6
	.word 7, 8, 9

result:
	.space 36

.text
	LDR R0,=matrix1
	LDR R1,=matrix2
	LDR R2,=result

	BL matrix_addition
	MOV R7, #1
	SWI 0

matrix_addition:
	MOV R3, #9
	MOV R4, #0

matrix_addition_loop:
	LDR R5, [R0], #4
	LDR R6, [R1], #4

	ADD R4, R5, R6

	STR R4, [R2], #4

	SUBS R3, R3, #1
	BNE matrix_addition_loop

done:
	SWI 0X011
.end