;; nasm -f macho64 assembler_nasm_osx_64_bit.asm
;; ld assembler_nasm_osx_64_bit.o -o assembler_nasm_osx_64_bit

section	.text
	global start        ; must be declared for linker (ld)

start:                  ; tell linker entry point

	mov	rax, 0x2000004  ; system call (sys_write)
	mov	rdi, 1          ; file descriptor (stdout)
	mov rsi, msg        ; message to write
	mov rdx, len        ; length of string
	syscall             ; call the kernel

	mov rax, 0x2000001  ; system call (exit)
	mov rdi, 0          ; return value
	syscall             ; call the kernel

section	.data

msg db 'Hello World!',0xa ; our string
len equ $ - msg           ; length of our string

