// ilasm cil.il
.assembly HelloWorld {}
.method public static void Main() cil managed
{
     .entrypoint
     .maxstack 1
     ldstr "Hello World"
     call void [mscorlib]System.Console::WriteLine(string)
     ret
}
