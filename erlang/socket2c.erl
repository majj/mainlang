
-module(socket2c).

-export([main/1, mabo_client/1]).

mabo_client(Str) ->

   
    {ok, Socket} = gen_tcp:connect("localhost", 4444, [binary, {packet, raw}]),
 
    ok = gen_tcp:send(Socket,  term_to_binary(Str)),
    
    io:format("sent ~p",[Str]).

    %% receive
    %%     {tcp, Socket, Bin} ->
    %%    	    io:format("Client received binary = ~p~n", [Bin]),
    %%  	    Val = binary_to_term(Bin),
    %%   	    io:format("Client result = ~p~n", [Val]),
    %%   	    gen_tcp:close(Socket)
    %%   end.



main(_) ->
    Str = "list_to_tuple([2*3, 10+1])",
    
     mabo_client(Str).
