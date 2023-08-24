@str = constant [14 x i8] c"Hello, World!\00" ; '\00' is the null terminator

declare i64 @puts(i8*) ; external declaration for the puts function

; definition of main function
define i64 @main() { ; return type is i64, no parameters
  %1 = getelementptr [14 x i8], [14 x i8]* @str, i64 0, i64 0 ; convert [14 x i8]* to i8*

  call i64 @puts(i8* %1) ; call puts with %1

  ret i64 0 ; return a success code
}
