

-module(loop).
-export([start/0]).

start() ->spawn(fun loop/0).



loop() ->

    receive
        {ok} ->
            io:format("ok"),
            loop();
        {_} ->
            io:format("others"),
            loop()
    end.
    
