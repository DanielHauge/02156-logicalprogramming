# Exercise 2
The program:
```prolog
p :- \+ !.
```
It is the opposite of a tautalogy. It will always fail, always.
the cut operation will always succeed but remove all other options going forward, no backtracking or anything else. Where as the \\+ operator states negation, so in this case it will always fail because cut will always succed. And because of cut there is no other alternatives, it will fail.