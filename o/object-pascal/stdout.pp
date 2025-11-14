program ObjectPascalExample;

type
   THelloWorld = class
      procedure Put;
   end;

procedure THelloWorld.Put;
begin
   Writeln('Hello World');
end;

var
   HelloWorld: THelloWorld;

begin
   HelloWorld := THelloWorld.Create;
   HelloWorld.Put;
   HelloWorld.Free;
end.