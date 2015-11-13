
-module(mabo_timer).

-export([start/1, s2/1, s3/1]).

start(T) ->
    Pid = spawn( fun info/0 ),
    spawn( fun()-> timer1(T, Pid) end ).

s2(T) ->
    %% Pid = spawn( fun info/0 ),
    spawn( fun()-> loop(T) end ).


info() ->
    receive 
	_ ->
       
        
	    %% io:format("t~n"),
	    info()
    end.

timer1(T, Pid) ->
    
    receive
	_ ->
	    io:format("done")
    after T-17 ->
	    
            %% spawn(fun info/0),
            io:format("~w~n",[os:timestamp()]),
	  Pid ! msg,

	  

          timer1(T, Pid)
	  %% timer:apply_interval(T, mabo_timer,   timer,(T, Pid)
    end.


loop(_) ->
    
    io:format("~w~n",[os:timestamp()]).

s3(T) ->    
    timer:apply_interval(T,mabo_timer, loop, [T]).
