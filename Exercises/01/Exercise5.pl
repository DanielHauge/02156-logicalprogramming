ingredient(pizza,ham).
ingredient(pizza,sauce).
ingredient(pizza,cheese).
ingredient(ham,meat).
ingredient(ham,salt).
ingredient(cheese,milk).
ingredient(cheese,salt).
ingredient(sauce,tomato).
ingredient(sauce,water).
ingredient(sauce,salt).

component(Term1,Term2) :- ingredient(Term2, Term1).
component(Term1,Term2) :- ingredient(SubTerm,Term1), component(SubTerm, Term2).