.text
.global _start

begin:
    mov r0, #0

again:
    swi 0x202                 ; Wait for button press
    cmp r0, #1
    beq loop1
    cmp r0, #2
    beq loop2
    b again

loop1:
    ldr r1, =zero             ; Start of display data for 0 to F
    mov r5, #16               ; 16 characters to display

back1:
    ldrb r0, [r1], #1         ; Load byte and post-increment
    swi 0x200                 ; Display character
    bl delay
    subs r5, r5, #1
    bne back1
    b again

loop2:
    ldr r1, =F                ; Start at 'F'
    mov r5, #16

back2:
    ldrb r0, [r1], #-1        ; Load byte and post-decrement
    swi 0x200                 ; Display character
    bl delay
    subs r5, r5, #1
    bne back2
    b again

delay:
    mov r4, #64000
loop3:
    subs r4, r4, #1
    bge loop3
    bx lr

.data
zero: .byte 0b11101101, 0b01100000, 0b11001110, 0b11101010, 0b01100011, 0b10101011, 0b10101111, 0b11100000, 0b11101111, 0b11101011, 0b11100111, 0b00111111, 0b10001101, 0b01111001, 0b10001111, 0b10000111
F: .byte 0b10000111
