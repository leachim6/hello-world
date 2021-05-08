
.model small

.stack 100h

.data
msg db "Hello World",'$'

.code
main proc
        mov ax,@data
        mov ds, ax


        mov dx,offset msg
        mov ah,09
        int 21h

        mov ax,4c00h
        int 21h

main endp
end main
