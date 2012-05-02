section	.text
    global _start			;must be declared for linker (ld)

_syscall:		
	int	0x80		;system call
	ret

_start:				;tell linker entry point

	push	dword len	;message length
	push	dword msg	;message to write
	push	dword 1		;file descriptor (stdout)
	mov	eax,0x4		;system call number (sys_write)
	call	_syscall	;call kernel

				;the alternate way to call kernel:
				;push	eax
				;call	7:0

	add	esp,12		;clean stack (3 arguments * 4)

	push	dword 0		;exit code
	mov	eax,0x1		;system call number (sys_exit)
	call	_syscall	;call kernel

				;we do not return from sys_exit,
				;there's no need to clean stack
section	.data

msg	db	"Hello, world!",0xa	;our string
len	equ	$ - msg			;length of our string