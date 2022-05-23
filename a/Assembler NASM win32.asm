;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


;HELLO IT is NASM x86 windows .asm to print hello world

;standalone assembly code to  resolve address of dll, library and  function


;compiling it 

; nasm -f win32 'filename.asm'
; ld -m i386pe 'filename.obj' -o 'filename.exe'
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


global _start

section .text
_start:


getkernel32:
	xor ecx, ecx                ; zeroing register ECX
	mul ecx                     ; zeroing register EAX EDX
	mov eax, [fs:ecx + 0x030]   ; PEB loaded in eax
	mov eax, [eax + 0x00c]      ; LDR loaded in eax
	mov esi, [eax + 0x014]      ; InMemoryOrderModuleList loaded in esi
	lodsd                       ; program.exe address loaded in eax (1st module)
	xchg esi, eax				
	lodsd                       ; ntdll.dll address loaded (2nd module)
	mov ebx, [eax + 0x10]       ; kernel32.dll address loaded in ebx (3rd module)

	; EBX = base of kernel32.dll address

getAddressofName:
	mov edx, [ebx + 0x3c]       ; load e_lfanew address in ebx
	add edx, ebx				
	mov edx, [edx + 0x78]       ; load data directory
	add edx, ebx
	mov esi, [edx + 0x20]       ; load "address of name"
	add esi, ebx
	xor ecx, ecx

	; ESI = RVAs

getProcAddress:
	inc ecx                             ; ordinals increment
	lodsd                               ; get "address of name" in eax
	add eax, ebx				
	cmp dword [eax], 0x50746547         ; GetP
	jnz getProcAddress
	cmp dword [eax + 0x4], 0x41636F72   ; rocA
	jnz getProcAddress
	cmp dword [eax + 0x8], 0x65726464   ; ddre
	jnz getProcAddress

find_getProcAddressFunc:            ;in export table find it's address    
	mov esi, [edx + 0x24]       ; offset ordinals
	add esi, ebx                ; pointer to the name ordinals table
	mov cx, [esi + ecx * 2]     ; CX = Number of function
	dec ecx
	mov esi, [edx + 0x1c]       ; ESI = Offset address table
	add esi, ebx                ; we placed at the begin of AddressOfFunctions array
	mov edx, [esi + ecx * 4]    ; EDX = Pointer(offset)
	add edx, ebx                ; EDX = getProcAddress
	mov ebp, edx                ; save getProcAddress in EBP for future purpose

getLoadLibraryA:
	xor ecx, ecx                ; zeroing ecx
	push ecx                    ; push 0 on stack
	push 0x41797261             ; 
	push 0x7262694c             ;  AyrarbiLdaoL
	push 0x64616f4c             ;
	push esp
	push ebx                    ; kernel32.dll
	call edx                    ; call GetProcAddress and find LoadLibraryA address



load_msvcrt:
	
	push 0x61616C6C             ; load msvcrt.dll  and put the ascii msvcrt.dll  in hex in reverse order (ex. defined above)
	sub word [esp+0x2], 0x6161 
	push 0x642E7472
	push 0x6376736D
	push esp	             
	call eax  		    ;LOADLIBRARY  to load msvcrt.dll 
	mov esi, eax
	sub esp , 16  		    ; clean some stack !carefully

find_printf:
	push 0x61616674
	sub word [esp+0x2],  0x6161
	push 0x6E697270
	push esp
	push esi		    ; push  address of  msvcrt.dll 
	call ebp      		    ; call getprocaddress to fing printf funtion in msvcrt.dll 

	sub esp, 0x8                ; clean some stack (! warning carefully)

print:
	push 0x646C726f             ;push hello world in reverse order
	push 0x77206F6c
	push 0x6C656820
	push esp  			
	call eax		     ;call printf function

	
	sub esp, 16  		     ;clean some stack !carefully


ExitProcess:	
	push 0x61737365			;ExitProcess address put it in reverse	
	sub word[esp+0x3], 0x61
	push 0x636F7250
	push 0x74697845		
	push esp
	push ebx			; push  kernel32.dll address
	call ebp			; call getprocaddress
exit:	
	xor ecx, ecx	
	push ecx
	call eax
