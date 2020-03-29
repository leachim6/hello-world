// compile:
// ilasm <this file's name>
// (if ilasm cannot be found, it's in the .NET directory (%windir%\Microsoft.NET\Framework\v4.0.30319\ilasm.exe))

// assembly references
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}

// assembly manifest
.assembly ilhw
{
  // target framework
  // this is always a pain in the ass (thus copy it from another assembly by using ildasm)
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string)
    = ( 01 00 1C 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 35 2E 33 01   // ,Version=v4.5.3.
        00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73   // .T..FrameworkDis
        70 6C 61 79 4E 61 6D 65 14 2E 4E 45 54 20 46 72   // playName..NET Fr
        61 6D 65 77 6F 72 6B 20 34 2E 35 2E 33 )          // amework 4.5.3


  .hash algorithm 0x00008004
  .ver 0:0:0:0
}

.module         ilhw.dll
.imagebase      0x00400000
.file alignment 0x00000200
.stackreserve   0x00100000
.subsystem      0x0003     // WINDOWS_CUI
.corflags       0x00000001 //  ILONLY


.class public abstract auto ansi sealed ILHW.Program
  extends [mscorlib]System.Object // nope, not implicit P:
{

  .method public hidebysig static void Main(class [mscorlib]System.String[] args) cil managed
  {
    .entrypoint // this method is the entry point of the program
    .maxstack 1 // the maximum amount of objects on the stack is 1.

    ldstr "Hello World" // loads a string on the stack (it actually allocates it and puts the GC handle on the stack)
    call void [mscorlib]System.Console::WriteLine(string) // this should be straightforward enough

    ret // even void methods need a return statement
  }

}
