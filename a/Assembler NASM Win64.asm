default rel

extern printf

section .text
global main
main:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 32

    lea     rcx, [msg]
    call printf

    leave
    ret

section .data
    msg: db "Hello World", 0