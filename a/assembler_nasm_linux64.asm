section .rodata
    msg db "Hello World", 0xA       ; String to print
    len equ $- msg                  ; Length of string

section	.text
    global _start                   ; Specify entry point to linker

_start:
	mov	eax, 1                      ; System call ID (sys_write)
	mov	edi, eax                    ; File descriptor (stdout)
	mov	esi, msg                    ; Text to print
    mov edx, len                    ; Length of text to print
	syscall                         ; Call kernel

    mov eax, 60                     ; System call ID (sys_exit)
	xor	edi, edi                    ; Error code (EXIT_SUCCESS)
	syscall                         ; Call kernel
