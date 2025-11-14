.data
    hw:        .asciiz        "Hello World"
.text
main:
    la $a0, hw  
    li $v0, 4      
    syscall
    li $v0, 10  
    syscall    
