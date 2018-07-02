.data
message:                .asciz "Hello World\n"

.text
.global main
main:
    mov r0, #1          @ file descriptor 1
    ldr r1, =message    @ load address of message
    mov r7, #4          @ system call write
    swi #0              @ display message

    mov r0, #0
    bx lr

