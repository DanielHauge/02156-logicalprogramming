sublist(L1, L2) :- L1 = [].
sublist(L1, L2) :- L1 = [A], member(A, L2).
sublist(L1, L2) :- L1 = [H|T], member(H, L2), sublist(T, L2).