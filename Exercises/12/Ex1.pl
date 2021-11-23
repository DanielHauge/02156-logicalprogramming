test(A) :- A>0.

plist(_, [],[]).

plist(P, [X|Xs], [Y|Ys]) :- 
    G =.. [P,X], G,
    plist(P, Xs, Ys).

    