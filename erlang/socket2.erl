
-module(socket2).

-export([main/1, start_mabo_server/0]).


start_mabo_server() ->

    io:format("1~n"),
    {ok, Listen} = gen_tcp:listen(6226, [binary, {packet, raw},
					 {reuseaddr, true},
					 {active, true}]),
    io:format("2~n"),
    {ok, Socket} = gen_tcp:accept(Listen),
    io:format("3~n"),
    gen_tcp:close(Listen),
    io:format("4~n"),
    loop(Socket),
    io:format("5~n").

loop(Socket) ->
    receive
	{tcp, Socket, Bin} ->
	    io:format("Server received binary = ~p~n", [Bin]),
	    %Str = binary_to_term(Bin),
	    %io:format("Server (unpacked) ~p~n",[Str]),
	    Reply = Bin, % Str, %% lib_misc:string2value(Str),
	    io:format("Server replaying = ~p~n",[Reply]),
	    gen_tcp:send(Socket, term_to_binary(Reply)),
	    loop(Socket);
	{tcp_closed, Socket} ->
	    io:format("Server socket closed~n")
   end.



main(_) ->
    start_mabo_server().
