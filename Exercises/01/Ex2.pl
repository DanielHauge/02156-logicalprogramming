

and(0,0,0).
and(0,1,0).
and(1,0,0).
and(1,1,1).

xor(0,0,0).
xor(0,1,1).
xor(1,0,1).
xor(1,1,0).

or(0,0,0).
or(0,1,1).
or(1,0,1).
or(1,1,1).


halfadder(Bit1,Bit2,Sum,Carry):-
    xor(Bit1,Bit2,Sum),
    and(Bit1,Bit2,Carry).

fulladder(Bit1,Bit2,Carryin,Sum,Carryout) :-
    xor(Bit1,Bit2,X),
    xor(X,Carryin,Sum),
    and(Bit1,Bit2,A),
    and(Carryin,X, B),
    or(A,B,Carryout).