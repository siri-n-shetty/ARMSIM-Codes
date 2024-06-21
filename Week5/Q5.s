@Write an ALP  to copy string from one location to another

.data
srcstr:	.asciz "Hello World"
dststr:	.asciz "Welcome"

.text
LDR R1, =srcstr
LDR R0, =dststr

strcopy:
	LDRB R2, [R1], #1
	STRB R2, [R0], #1
	CMP R2, #0
	BNE strcopy
	LDR R0,=srcstr
	SWI 0x02
	LDR R0,=dststr
	SWI 0x02
	SWI 0x011
.end