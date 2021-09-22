part(_,[],[],[]).
part(X,[Y|Xs],[Y|Ls],Bs) :- X > Y, part(X,Xs,Ls,Bs).
part(X,[Y|Xs],Ls,[Y|Bs]) :- X =< Y, part(X,Xs,Ls,Bs).

qs([],[]).
qs([X|Xs],Ys) :-
    part(X,Xs,Ls,Bs),
    qs(Ls,Vs),
    qs(Bs,Ws),
    append(Vs,[X|Ws],Ys).