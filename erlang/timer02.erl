

do_task (A) ->
  io:format ("~w: now=~w~n", [ A, now () ]).

main (_) ->
  io:format ("starting \n"),
  { ok, _ } =
    timer:apply_interval (80, timer02, do_task, [ "info" ]),
  timer:sleep (1000),
  io:format ("ending \n").