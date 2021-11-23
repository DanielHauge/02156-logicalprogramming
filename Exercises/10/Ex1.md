# Clausal form of FOL

## $\forall x (p(x) \to \exists y q(y))$
- Replacer y med en find udfra x skolen func.
$$ \forall x (p(x) \to q(f(x)))$$
- Eliminere implikation
$$ \forall x (\neg p(x) \lor q(f(x))) $$

Vi får altså en clausal form med en 2 atomiske formulare:
- $\neg p(x)$
- $q(f(x))$

Tjek:
```
skolem(all(X, p(X) => ex(Y, q(Y)))).
```

## $\forall x \forall y (\exists z p(z) \land \exists u q(x,u) \to \exists v q(y,v)))$
- Eliminere implication:
$$\forall x \forall y (\neg(\exists z p(z) \land \exists u q(x,u)) \lor \exists v q(y,v)))$$
Distributing the negation:
$$\forall x \forall y ((\forall z \neg p(z) \lor \forall u \neg q(x,u)) \lor \exists v q(y,v)))$$
Extract quantifiers:
$$\forall x \forall y \exists v \forall z \forall u ((\neg p(z) \lor \neg q(x,u)) \lor q(y,v)))$$
There exists a v for all x and y's. We can find that v with a skolem func:
$$\forall x \forall y \forall z \forall u ((\neg p(z) \lor \neg q(x,u)) \lor q(y,f(y,x))))$$

A universal formular with only universal quantifiers:
- $\forall x$ , $\forall y$ , $\forall z$ , $\forall u$

With 3 atomic formulars:
- $\neg p(z)$
- $\neg q(x,u)$
- $q(y,f(y,x)))$

Check it:
```
skolem(all(X, (all(Y, ((ex(Z, (p(Z))) & ex(U, (q(X,U)))) => ex(V, (q(Y, V))) ))))).
```

## $\exists x (\neg \exists y p(y) \to \exists z (q(z) \to r(x)))$
Eliminere implication: 

$$\exists x (\neg \neg \exists y p(y) \lor \exists z (q(z) \to r(x)))$$

Eliminate double negation

$$\exists x (\exists y p(y) \lor \exists z (q(z) \to r(x)))$$

Eliminate

$$\exists x (\exists y p(y) \lor \exists z (\neg q(z) \lor r(x)))$$

Extraction of extitential quantifyers

$$\exists x \exists y \exists z ( p(y) \lor (\neg q(z) \lor r(x)))$$

Skolem constants remove existentual quantifiers.

$$ p(b) \lor \neg q(c) \lor r(a)$$

Tjek:
```
skolem(ex(X, (~ex(Y, (p(Y))) => ex(Z, (q(Z) => r(X)))))). 
```


