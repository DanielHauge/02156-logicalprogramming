% Based on: boolean.pl

:- op(650,xfy,eqv).  /* equivalence */ 
:- op(640,xfy,imp).  /* implication */ 
:- op(630,xfy,dis).  /* disjunction */ 
:- op(620,xfy,con).  /* conjunction */ 
:- op(610,fy, neg).  /* negation    */

tt(neg A,  V,TV) :- tt(A,V,TVA), negate(TVA,TV).
tt(A con B,V,TV) :- tt(A,V,TVA), tt(B,V,TVB), opr(con,TVA,TVB,TV).
tt(A dis B,V,TV) :- tt(A,V,TVA), tt(B,V,TVB), opr(dis,TVA,TVB,TV).
tt(A eqv B,V,TV) :- tt(A,V,TVA), tt(B,V,TVB), opr(eqv,TVA,TVB,TV).
tt(A imp B,V,TV) :- tt(A,V,TVA), tt(B,V,TVB), opr(imp,TVA,TVB,TV).
tt(A,      V,TV) :- member((A,TV),V).

/* Available values for many valued logic */
values([t,f,x]).

/* Multi valued negation operation */
negate(P,Q) :-
  P = t -> Q = f ;
  P = f -> Q = t ;
  Q = P.

/* Many valued logical operations */
opr(con, P,Q,R) :-  P = Q -> R = P; 
                    P = t -> R = Q ; 
                    Q = t -> R = P; 
                    R = f. % Otherwise
opr(eqv, P,Q,R) :-  P = Q -> R = t ; 
                    P = t -> R = Q ; 
                    Q = t -> R = P ; 
                    negate(Q, QN), P = f -> R = QN ; 
                    negate(P, PN), Q = f -> R = PN ; 
                    R = f. % Otherwise
opr(dis, P,Q,R) :- negate(P, PN), negate(Q,QN), opr(con, PN, QN, RN), negate(RN, R).
opr(imp, P,Q,R) :- opr(con, P, Q, RN), opr(eqv, P, RN, R).

/* Printing many valued negation truth table */
negate :-
  values(L), write(neg), nl,
  member(P,L), negate(P,Q),
  write(P), write(' '), write(Q), nl,
  fail.
negate.

/* Printing many valued logical operations truth table */
opr :- 
    values(L), write(con), write('       '), write(dis), write('       '), write(eqv), write('       '), write(imp), nl,
    member(P, L), member(Q,L), opr(con, P, Q, CONR), opr(dis, P, Q, DISR), opr(eqv, P, Q, EQVR), opr(imp, P, Q, IMPR), 
    write(P), write(' '), write(Q), write(' '), write(CONR), write('     '),
    write(P), write(' '), write(Q), write(' '), write(DISR), write('     '),
    write(P), write(' '), write(Q), write(' '), write(EQVR), write('     '),
    write(P), write(' '), write(Q), write(' '), write(IMPR),
    nl,
    fail.
opr.

/* Checks classic boolean requirements */
boolean :- tt(neg p, [(p,t)], f), tt(neg p, [(p,f)], t), 
      tt(p con q, [(p, t), (q,t)], t), tt(p con q, [(p, t), (q,f)], f), tt(p con q, [(p, f), (q,t)], f), tt(p con q, [(p, f), (q,f)], f),
      tt(p dis q, [(p, t), (q,t)], t), tt(p dis q, [(p, t), (q,f)], t), tt(p dis q, [(p, f), (q,t)], t), tt(p dis q, [(p, f), (q,f)], f),
      tt(p eqv q, [(p, t), (q,t)], t), tt(p eqv q, [(p, t), (q,f)], f), tt(p eqv q, [(p, f), (q,t)], f), tt(p eqv q, [(p, f), (q,f)], t),
      tt(p imp q, [(p, t), (q,t)], t), tt(p imp q, [(p, t), (q,f)], f), tt(p imp q, [(p, f), (q,t)], t), tt(p imp q, [(p, f), (q,f)], t).


% Imp (Imp p q) Imp Dis p r Dis q r
% AlphaImp
%   Neg (Imp p q)
%   Imp Dis p r Dis q r
% Ext
%   Imp Dis p r Dis q r
%   Neg (Imp p q)
% AlphaImp
%   Neg Dis p r
%   Dis q r
%   Neg (Imp p q)
% Ext
%   Dis q r
%   Neg Dis p r
%   Neg (Imp p q)
% AlphaDis
%   q
%   r
%   Neg Dis p r
%   Neg (Imp p q)
% Ext
%   Neg (Imp p q)
%   q
%   r
%   Neg Dis p r
% BetaImp
%   p
%   q
%   r
%   Neg Dis p r
% +
%   Neg q
%   q
%   r
%   Neg Dis p r
% Ext
%   Neg Dis p r
%   p
%   q
%   r
% +
%   Neg q
%   q
% BetaDis
%   Neg p
%   p
%   q
%   r
% +
%   Neg r
%   p
%   q
%   r
% +
%   Neg q
%   q
% Ext
%   p
%   Neg p
% +
%   r
%   Neg r
% +
%   q 
%   Neg q
% Basic