# Week 6 Exercise 1
Vi kigger på formel:
$$(p \to q \to r) \to (\neg q \to r) \to (\neg p \to r ) \to r$$

Men vi starter med de mindre formler manuelt:

$$p \to (q \to p)$$

$$\neg (p \to (\neg q \lor p)) \\ 
\equiv \neg (\neg p \lor (\neg q \lor p)) \\ 
\equiv \neg (\neg p \lor \neg ( q \land \neg p)) \\ 
\equiv p \land (q \land \neg p) \\
 \equiv p \land q \land \neg q $$
1. $p$
2. $q$
3. $\neg q$
4. $\square 2,3$
$$(p \to q ) \to p$$
$$ \neg ((p \to q ) \to p ) \\ 
\equiv \neg (\neg (\neg p \lor q ) \lor p ) \\
\equiv ( \neg p \lor  q ) \land \neg p   $$
$$\{ \bar{p} q, \bar{p}\} $$
1. $\bar{p} q$
2. $\bar{p}$
3. No

Considering full equation:

$$ \neg ((p \to q \to r) \to (\neg q \to r) \to (\neg p \to r ) \to r) \\
\equiv \neg ((\neg p \lor \neg q \lor r) \to (q \lor r) \to (p \lor r ) \to r) \\
\equiv \neg ((\neg p \lor \neg \neg q \lor r) \lor \neg (q \lor r) \lor \neg (p \lor r ) \lor r) \\
\equiv \neg ((\neg p \lor q \lor r) \lor \neg (q \lor r) \lor \neg (p \lor r ) \lor r) \\
\equiv \neg (\neg ( p \land \neg q \land \neg r) \lor (\neg q \land \neg r) \lor (\neg p \land \neg r) \lor r) \\ 
\equiv  (\neg \neg ( p \land \neg q \land \neg r) \land \neg (\neg q \land \neg r) \land \neg (\neg p \land \neg r) \land \neg r) \\
\equiv p \land \neg q \land \neg r \land ( q \lor r) \land ( p \lor r) \land \neg r $$
1. $p$
2. $\bar{q}$
3. $\bar{r}$
4. $q,r$
5. $p,r$
6. $q : 3,4$
7. $\square : 2,4$
