  .data         # declare and initialize variables
hello:  .asciz "Hello world!" # string with null terminator
 
  .text         # code starts here
main:           # label marking the entry point of the program
  la a0, hello  # load the address of hello into $a0 (1st argument)
  addi a7, zero, 4     # code to print the string at the address a0
  ecall         # make the system call
 
  addi a7, zero, 10    # code to exit
  ecall         # make the system call
