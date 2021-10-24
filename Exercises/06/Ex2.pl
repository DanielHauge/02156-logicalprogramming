add(X,Y,Y) :- member(X,Y), !.
add(X,Y,[X|Y]).