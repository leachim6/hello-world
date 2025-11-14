#!/usr/bin/env qore
%exec-class HelloWorld
class HelloWorld
{
    constructor()
    {
	    background $.say("Hello World");
    }
    private say($arg)
    {
	    printf("%s\n", $arg);
    }
}
