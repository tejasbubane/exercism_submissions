-module(leap).
-export([leap_year/1, test_version/0]).

leap_year(Y) ->
    divisible(Y, 400) orelse (divisible(Y, 4) andalso not divisible(Y, 100)).

divisible(Y, N) ->
    Y rem N == 0.

test_version() ->
    1.
