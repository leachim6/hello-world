BITS 64
SECTION .text
global main
main:
xor rcx, rcx            
mov rax, [gs:rcx + 0x60]
mov rax, [rax + 0x18]   
mov rsi, [rax + 0x20]  
lodsq                   
xchg rax, rsi         
lodsq                   
mov rbx, [rax + 0x20]    
xor r8, r8                
mov r8d, [rbx + 0x3c]    
mov rdx, r8               
add rdx, rbx             
mov r8d, [rdx + 0x88]     
add r8, rbx             
xor rsi, rsi               
mov esi, [r8 + 0x20]       
add rsi, rbx               
xor rcx, rcx              
mov r9, 0x41636f7250746547 


Get_Function:

inc rcx                    
xor rax, rax               
mov eax, [rsi + rcx * 4]   
add rax, rbx              
cmp QWORD [rax], r9        
jnz Get_Function
xor rsi, rsi             
mov esi, [r8 + 0x24]       
add rsi, rbx               
mov cx, [rsi + rcx * 2] 
xor rsi, rsi               
mov esi, [r8 + 0x1c]       
add rsi, rbx           
xor rdx, rdx               
mov edx, [rsi + rcx * 4]   
add rdx, rbx             
mov rdi, rdx              


mov rcx, 0x41797261         
push rcx                    
mov rcx, 0x7262694c64616f4c  
push rcx                     
mov rdx, rsp                 
mov rcx, rbx                
sub rsp, 0x30               
call rdi                   
add rsp, 0x30                
add rsp, 0x10                
mov rsi, rax                 

mov rcx, 0x41656C6F73 
push rcx
mov rcx, 0x6E6F436574697257
push rcx
mov rdx, rsp
mov rcx, rbx
sub rsp, 0x30
call rdi
mov rsi, rax


mov rcx, 0x656C646E
push rcx
mov rcx, 0x6148647453746547   
push rcx                      
mov rdx, rsp                 
mov rcx, rbx              
sub rsp, 0x30                
call rdi                
add rsp, 0x28                
add rsp, 0x18               
mov r15, rax 

mov rcx, offset
sub rsp, 0x30
call r15
mov r15, rax
add   RSP, 32                                 

sub   RSP, 32 + 8 + 8  
mov rcx, r15
mov rdx, message
mov r8, len
mov r9,  written
mov qword[rsp+2*8], 0
sub rsp, 0x30
call rsi

xor rcx, rcx           
mov rcx, 0x737365         
push rcx                
mov rcx, 0x636f725074697845  
push rcx 
mov rdx, rsp                
mov rcx, rbx                 
sub rsp, 0x30            
call rdi                    
add rsp, 0x30                
add rsp, 0x10         
mov r15, rax                 


mov rcx, 0     
call r15      
section .data

	offset equ -11
	message db "Hello World",0
	len equ $-message

section .bss
	written resq 1
