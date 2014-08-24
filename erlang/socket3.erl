
-module(socket3).

-export([main/1, start_server/0]).


start_server() ->

    io:format("1~n"),
    {ok, Listen} = gen_tcp:listen(6010, [binary, {packet, raw},
					 {reuseaddr, true},
					 {active, true}]),
    io:format("2~n"),

    spawn(fun() -> par_connect(Listen) end),

     receive
     	_  ->
            io:format("_")
    end.
    

par_connect(Listen) ->
    {ok, Socket} = gen_tcp:accept(Listen),
    io:format("3~n"),
    %% gen_tcp:close(Listen),
    spawn(fun() -> par_connect(Listen) end),
    io:format("4~n"),
    loop(Socket),
    io:format("5~n").

loop(Socket) ->
    receive
	{tcp, Socket, Bin} ->
	    io:format("[~w]Server received binary = ~p~n", [self(),Bin]),
	    %io:format("[~w]~n",binary_to_integer(Bin)),
	    %Val = binary_to_integer(Bin),
	    %io:format("Server (unpacked) ~p~n",[Val]),
	    %Reply = "1,Mabo", %% Val*Val, %% lib_misc:string2value(Str),
	    %io:format("Server replaying = ~p~n",[Reply]),
	    gen_tcp:send(Socket, "Reply~n"),
	    loop(Socket);
	{tcp_closed, Socket} ->
	    io:format("Server socket closed~n")
   end.



main(_) ->
    start_server().
