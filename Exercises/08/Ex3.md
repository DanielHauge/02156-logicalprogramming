# Exercise 3 week 8
Prooving: 
$$\forall x (p(x) \to q(x)) \to (\exists x p(x) \to \exists x q(x))$$

## Gentzen:
- $$\neg (\forall x (p(x) \to q(x)) \to (\exists x p(x) \to \exists x q(x)))$$
- $$ \forall x (p(x) \to q(x)) , \neg (\exists x p(x) \to \exists x q(x))) $$
- $$ \forall x (p(x) \to q(x)) , \exists x p(x) , \neg \exists x q(x) $$
- $$ \forall x (p(x) \to q(x)) , p(a) , \neg \exists x q(x) $$
- $$ \forall x (p(x) \to q(x)) , p(a) \to q(a), p(a) , \neg \exists x q(x) $$
- $$ \forall x (p(x) \to q(x)) , p(a) \to q(a), p(a) , \neg \exists x q(x) , \neg q(a)  $$
Beta implication:
- $$ \forall x (p(x) \to q(x)) , \neg p(a) , p(a) , \neg \exists x q(x) , \neg q(a)  $$
- $$ \forall x (p(x) \to q(x)) , q(a), p(a) , \neg \exists x q(x) , \neg q(a)  $$

Lukket pga. $\neg p(a), p(a)$ samt. $q(a), \neg q(a)$

## Hilbert system

$$ \vdash \forall x (p(x) \to q(x)) \to (\exists x p(x) \to \exists x q(x)) $$
$$ \forall x (p(x) \to q(x)) \vdash \exists x p(x) \to \exists x q(x) $$

? Kigger solution

 
