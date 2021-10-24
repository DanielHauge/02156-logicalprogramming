# Exercise 1
### $p(a)$
$$\neg p(a)$$

There is no counter example. It is open.

### $\exists x p(x)$
$$\neg \exists x p(x)$$
$$\neg \exist x, p(a)$$

There is no counter example. It is open.

### Prooving: $\forall x p(x)$
$$ \neg \forall x p(x)$$
$$ \neg p(a) $$

There is no counter example. It is open.


### Prooving: $\forall x p(x) \to \exists x p(x)$
$$\neg (\forall x p(x) \to \exists x p(x))$$
Alpha imp
$$\forall x p(x) , \neg \exists x p(x) $$
Using delta rule as before:
$$\neg p(a), \neg \exists x p(x)$$
Using gamma rule.
$$\neg p(a), \neg \exist x p(x), \neg p(a)$$

Valid, it is closed as there is a counter example:


### Prooving: $\exists x p(x) \to \forall x P(x)$
$$\neg (\exists x p(x) \to \forall x p(x))$$
Alpha imp
$$\exists x p(x), \neg \forall x p(x) $$
Using delta rule as before, creating new constant.
$$\exists x p(x), \neg p(a)$$
Using delta rule, creating new constant.
$$ p(b), \neg p(a)$$

There is no counter example, it is not allways true. Makes sense, it is not allways the case that just because that there is one tall person in the room that everyone else is too.

### Prooving: $\exists x ((\neg p(a) \to (q \land \neg q)) \to p(x))$
$$\neg (\exists x ((\neg p(a) \to (q \land \neg q)) \to p(x)))$$

