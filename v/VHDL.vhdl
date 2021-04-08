use std.textio.all;

entity hello_world is
end hello_world;

architecture behaviour of hello_world is
begin
	process
    begin
       write (output, String'("Hello World"));
       wait;
    end process;
end behaviour;