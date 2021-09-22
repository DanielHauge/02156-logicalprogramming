delete([],_,[]) :- !.
delete([H|T1],H,L2) :- delete(T1, H, L2), !.
delete([H|T1],V, [H|T2]) :- delete(T1, V, T2), !.