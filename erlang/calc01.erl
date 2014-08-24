%% coding: utf8

-module(calc01).

-export([main/1]).


for(1, T) ->
	io:format('~B~n',[T-1]);

for(I, T) ->
	%io:format('~B~n',[T-I]),
	for(I-1, T).

for(T) ->
	for ( T, T ).

test() ->
	%io:format('hello world!  ~B~n', [ 256*6]),
	
	%io:format('LLVM, ~s, ~s, ~s. ~n',['zero install', 'calliga', 'Zotonic']),

	for(5500),
	
	%io:format('~s~n',['hello']),
	
	{ok,'test it'}.
	
main(_)->

	%timer:second(),
	
	{_, M}  = test(),
	io:format('~s ~n',[M]).
	
	%{_, N} = test(),
	%io:format('again: ~s ~n',[N]).
	
