-module(hello).
-export([start/1]).

start() ->
	io:format("Hello World!").