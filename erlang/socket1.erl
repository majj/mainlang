
-module(socket1).
-export([get_url/0]).

get_url() ->
    get_url("www.mabotech.com").

get_url(Host) ->
    {ok, Socket} = gen_tcp:connect(Host, 80, [binary, {packet, 0}]),
    ok = gen_tcp:send(Socket, "GET / HTTP/1.0\r\n\r\n"),
    receive_data(Socket, [],0).

receive_data(Socket, SoFar,I) ->
    receive
	{tcp, Socket, Bin} ->
	    io:format("~w~n",[I+1]),
	    receive_data(Socket, [Bin|SoFar],I+1);
	{tcp_closed, Socket} ->
	    Info = list_to_binary(lists:reverse(SoFar)),
	    
	    io:format("~p~n", [Info]),

	    string:tokens(binary_to_list(Info), "\r\n")

    end.


