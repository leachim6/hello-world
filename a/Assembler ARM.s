.data
message:                .asciz "Hello World\n"

.text
.global main
main:
    mov r0, #1  
    ldr r1, =message 
    mov r7, #4    
    swi #0           

    mov r0, #0
    bx lr

