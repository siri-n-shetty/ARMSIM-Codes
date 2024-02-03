@Write a program to compute the factorial of a number using subroutines

.data
N:	.word 6
RESULT:	.word 0

.text
LDR R1,=N
LDR R0, [R1]
LDR R7,=RESULT
BL FACTORIAL
B END

FACTORIAL:
	STMDB R13!, {R4-R5, LR}
	MOV R4, #1
	MOV R2, #1

LOOP:
   	CMP R4, R0               
   	BEQ DONE                
   	ADD R4, R4, #1           
   	MUL R2, R2, R4           
   	B LOOP                   

DONE:
   	STR R2, [R7]             
   	LDMIA SP!, {R4-R5, PC}   

END:
	SWI 0X011
.end
