@Write an ALP to implement Sum[i]+=a[i][j] 

.data
A:  .word 1, 2, 3, 4, 5, 6, 7, 8, 9    @ 3x3 Matrix

.text
	LDR R0,=A
	MOV R1, #0
	MOV R2, #3
	MOV R3, #3
	MOV R4, #0
	MOV R5, #0

for_i:
for_j:
	STMDB R13!, {R4, R5}
	BL get_addr
	LDMDB R13!, {R4, R5, R6}
	ADD R6, R0, R6
	LDR R6, [R6]
	ADD R1, R1, R6

get_addr:
	LDMIA R13!, {R4, R5}
	MUL R7, R4, R3
	ADD R7, R7, R5
	LSL R6, R7, #2
	STMIA R13!, {R4, R5, R6}
	BX for_j:
.end