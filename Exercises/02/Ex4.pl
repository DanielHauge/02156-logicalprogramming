ordered(List) :- List=[].
ordered(List) :- List=[_].
ordered(List) :- List=[A,B|Tail], A =< B, ordered([B|Tail]).