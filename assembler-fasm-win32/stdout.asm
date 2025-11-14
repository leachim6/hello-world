format PE CONSOLE
entry start
include 'win32a.inc'
section '.data' data readable writable
	helo db "Hello World", 0

section '.text' code readable executable
start:	xor ecx, ecx
	push helo
	call [printf]
	add esp, 4
	
	
	push ecx
	call [ExitProcess]



section '.idata'  import data readable
library kernel 	, 'kernel32.dll',\
	msvcrt , 'msvcrt.dll '

import kernel,\
	ExitProcess, 'ExitProcess'
import msvcrt,\
	printf, 'printf'
