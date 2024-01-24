@Write an ALP using ARM instruction set to check if a number stored in a register is even or odd.
@If even, store 00 in R0, else store FF in R0

.text
MOV R1, #16
ANDS R2, R1, #1		@Set Z flag to 1 if even 
BEQ L1			@If Z flag is 1, it moves zero 
	MOV R0, #0xFF
B L2

L1: 
	MOV R0, #0x00
L2: 
	SWI 0x011
.end