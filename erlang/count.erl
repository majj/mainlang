
-module(count).

-export([ct/0, xt/0, pi/0, loop/1, main/1]).

ct() ->
    %% Pid = self(),
    io:format("info~w~n", [self()]),
    io:format("hi~n").

pi() ->
    io:format("pid:~s~n", [os:getpid()]).


loop(0) ->
    io:format("done~n"),
    {ok, 1};

loop(1) ->
    io:format("1~n");

loop(N) ->
    if N > 3 ->
	    io:format(">3~n");
       N=<3 ->
            io:format("=<3~n")
    end,
    io:format("~w~n", [N]),
    loop(N-1).

xt() ->
    TS = {_, _, Micro} = os:timestamp(),
    io:format("micro:~w~n", [Micro]),
    io:format("~p~n",[os:version()]),
    io:format("Timestamp:~w",[TS]).


main(_) ->
    ct().
