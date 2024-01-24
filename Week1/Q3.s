@Convert the statement into ARM where the operand is in memeory
@G = H + A[10]

.data
    H:      .word 2
    A:      .word 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120
    G:      .word 0

.text
   
    LDR R1, =H          	@ Load address of H into register R1
    LDR R2, [R1]        	@Load value of H into register R2
    
    LDR R3, =A          	@Load address of A into register R3
    LDR R4, [R3, #40]   	@Load value of A[10] into register R4 (assuming each element is 4 bytes)
    
    ADD R5, R2, R4      	@Add H and A[10], result in register R5
    
    LDR R6, =G          	@Load address of G into register R6
    STR R5, [R6]        	@Store the result in G

.end