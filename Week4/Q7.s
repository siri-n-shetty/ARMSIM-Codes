.data
data_items:	.word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10   
N:  		.word 10                             
result: 		.word 0                          
 
.text
    	LDR R4, =data_items                  
    	LDR R5, =N                           
    	LDR R5, [R5]                         
    	MOV R6, #0                           
    	MOV R7, #0                           

loop:
    	CMP R7, R5                           
    	BGE end_loop                         

    	ADD R8, R4, R7, LSL #2               
    	LDR R9, [R8]                         
    	ADD R6, R6, R9                       
    	ADD R7, R7, #2                       

    	B loop

end_loop:
    	LDR R10, =result                     
    	STR R6, [R10]                        

end:
	SWI 0x011
.end
