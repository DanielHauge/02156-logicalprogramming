intersection([], _, []) :- !.
intersection([H|T1], Set2, Result) :- 
    member(H, Set2), !, Result = [H|Rest], intersection(T1, Set2, Rest).
intersection([_|T1], Set2, Result) :- intersection(T1, Set2, Result).

union([],L,L) :- !.
union([H|T],L,R) :- member(H,L), !, union(T,L,R).
union([H|T],L,[H|R]) :- union(T,L,R).



