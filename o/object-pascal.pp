program ObjectPascalExample;

type
   THelloWorld = class
      procedure Put;
   end;

procedure THelloWorld.Put;
begin
   Writeln('Hello, World!');
end;

var
   HelloWorld: THelloWorld;           { isso é um ponteiro implícito }

begin
   HelloWorld := THelloWorld.Create;  { construtor retorna ponteiro }
   HelloWorld.Put;
   HelloWorld.Free;                   { essa linha libera o espaço de memória que contém o objeto (destrói o objeto) }
end.
