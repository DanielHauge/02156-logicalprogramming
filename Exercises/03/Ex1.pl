membera(E, List) :- append([E], _, List).
membera(E, List) :- append(_, [E], List). 
membera(E, List) :- append(_, [E,_], List). 


