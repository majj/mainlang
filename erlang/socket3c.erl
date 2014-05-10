
-module(socket3c).

-export([main/1, mabo_client/1]).

mabo_client(Str) ->

   
    {ok, Socket} = gen_tcp:connect("localhost", 4444, [binary, {packet, raw}]),
    
    V = term_to_binary([Str]),
   
    io:format("~p",[byte_size(V) ]),
    O =list_to_binary([<<0,0,35,0>>,V]),



    ok = gen_tcp:send(Socket, O),
    
    io:format("sent ~p",[Str]).

    %% receive
    %%     {tcp, Socket, Bin} ->
    %%    	    io:format("Client received binary = ~p~n", [Bin]),
    %%  	    Val = binary_to_term(Bin),
    %%   	    io:format("Client result = ~p~n", [Val]),
    %%   	    gen_tcp:close(Socket)
    %%   end.



main(_) ->
    Str = "00170000\"MT_TM01\",123000666,xyz",
    
     mabo_client(Str).
