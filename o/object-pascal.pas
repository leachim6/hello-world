program ObjectPascalHelloWorld;
 
type
   THelloWorld = class
      procedure Print;
   end;
 
procedure THelloWorld.Print;
begin
   Writeln('Hello, World!');
end;
 
var
   HelloWorld: THelloWorld;
 
begin
   HelloWorld := THelloWorld.Create;
   HelloWorld.Print;
   HelloWorld.Free;
end.
