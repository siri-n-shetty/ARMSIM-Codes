.text
	MOV R3, #0x00F8 
	MOV R2, #0          @Sum 
	MOV R1, #0          @Digit counter 

sum_loop:
	MOV R0, R3
	AND R0, R0, #0xF    
	ADD R2, R2, R0      
	MOV R3, R3, LSR #4  
	CMP R3, #0          
	BNE sum_loop        

exit:
	SWI 0X011
.end