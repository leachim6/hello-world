section	.text
    global _start			;must be declared for linker (ld)

_start:					;tell linker entry point

	xor	ebx,ebx 	;ebx=0
	mov	ecx,msg		;address of message to write
	lea	edx,[ebx+len]	;message length
	lea	eax,[ebx+4]	;system call number (sys_write)
	inc	ebx		;file descriptor (stdout)
	int	0x80		;call kernel

	xor	eax, eax	;set eax=0
	inc	eax		;system call number (sys_exit)
	int	0x80		;call kernel

section	.rodata

msg	db	'Hello, world!',0xa	;our string
len	equ	$ - msg			;length of our string
