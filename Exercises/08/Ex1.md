# Exercise 1 week 8
Given the facts:

edge(a,c). edge(a,b). edge(b,a).


## ?- findall(X,edge(X,Y),L).
Should give:
L = [a,a,b]

## ?- findall(Y,edge(X,Y),L).
Should give:
L = [c,b,a]

## ?- bagof(X,edge(X,Y),L).
Should give:
L = [a]
L = [a]
L = [b]


## ?- bagof(Y,edge(X,Y),L).
L = [c,b]
L = [a]
## ?- setof(X,edge(X,Y),L).
L = [b]
L = [a]
L = [a]

## ?- setof(Y,edge(X,Y),L).
L = [c,b]
L = [a]
