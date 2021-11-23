sublist1(A,B) :- append(C,_,B), append(_,A,C).
sublist2([],_).
sublist2(A,B) :- A = [_|_], append(_,C,B), append(A,_,C).
sublist3(A,B) :- append(A,_,B).
sublist3(A,[_|B]) :- sublist3(A,B).
sublist4([],[]).
sublist4(A,[_|B]) :- sublist4(A,B).
sublist4([X|A],[X|B]) :- sublist4(A,B).