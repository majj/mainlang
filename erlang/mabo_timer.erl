
-module(mabo_timer).

-export([start/1, s2/1]).

start(T) ->
    Pid = spawn( fun info/0 ),
    spawn( fun()-> timer(T, Pid) end ).

s2(T) ->
    %% Pid = spawn( fun info/0 ),
    spawn( fun()-> loop(T) end ).


info() ->
    receive 
	_ ->
       
    	    io:format("~w~n",[os:timestamp()]),
	    io:format("t~n"),
	    info()
    end.

timer(T, Pid) ->
    
    receive
	_ ->
	    io:format("done")
    after T-8 ->
	    
            %% spawn(fun info/0),
	  Pid ! msg,

	  

          timer(T, Pid)
	  %% timer:apply_interval(T, mabo_timer,   timer,(T, Pid)
    end.


loop(T) ->
    
    io:format("t~n"),
    timer:apply_interval(T,loop, [T]).
