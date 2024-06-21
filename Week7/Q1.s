.text 

mov r0,#0x02 ;left led on 
swi 0x201 
mov r0,#0x01 ;right led on 
swi 0x201 
mov r0,#0x03 ;both led on 
swi 0x201 

.end
