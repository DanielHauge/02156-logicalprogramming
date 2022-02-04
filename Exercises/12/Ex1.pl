test(A) :- A>0.

plist(_, [],[]).

plist(P, [X|Xs], [X|Ys]) :- 
    G =.. [P,X], G, !,
    plist(P, Xs, Ys).
plist(P, [_|Xs], Ys) :- plist(P, Xs, Ys).
    