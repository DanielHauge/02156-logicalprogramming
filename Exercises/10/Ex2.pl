
sub([],[]).
sub([X|A],[X|B]) :- sub(A,B).
sub([_|A],B) :- sub(A,B).

power(Set, PowerSet) :- findall(SubSet, sub(Set, SubSet), PowerSet).