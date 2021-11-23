# EXercise 2 week 8

```
test([
    deduce([all(X, p(X) => q(X)), all(X, p(X))], all(X, p(X))),
    deduce([all(X, p(X) => q(X)), all(X, p(X))], all(X, p(X)) => p(a)),
    deduce([all(X, p(X) => q(X)), all(X, p(X))], p(a)),
    deduce([all(X, p(X) => q(X)), all(X, p(X))], all(X, (p(X) => q(X)))),
    deduce([all(X, p(X) => q(X)), all(X, p(X))], all(X, (p(X) => q(X)))=> p(a) => q(a)),
    deduce([all(X, p(X) => q(X)), all(X, p(X))], p(a) => q(a)),     
    deduce([all(X, p(X) => q(X)), all(X, p(X))], q(a)),
    deduce([all(X, p(X) => q(X)), all(X, p(X))], all(X, q(X))),
    deduce([all(X, p(X) => q(X))], all(X, p(X)) => all(X, q(X))),
    deduce([], all(X, p(X) => q(X)) => (all(X, p(X)) => all(X, q(X))))
]).
```