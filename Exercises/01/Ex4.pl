power(_,0,1).
power(X,Y,Z) :-
    Y > 0,
    Y1 is Y-1,
    power(X,Y1,Z1),
    Z is X*Z1.

% (the factorial of n is n! = n(n - 1)(n - 2) ... 1 and 0! = 1).
factorial(0,1).
factorial(N,A) :-
    N > 0,
    N1 is N-1,
    factorial(N1,A1),
    A is N*A1.

