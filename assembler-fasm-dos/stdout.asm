format MZ

entry .code: start

segment .code
start:
	mov ax, .data
	mov ds, ax
	mov dx, msg 
	mov ah, 9h
	int 21h
	mov ah, 4ch
	int 21h

segment .data
	msg db 'Hello World', '$'
