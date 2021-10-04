% Problem 1
w(5,2186369,a,det).
w(2107,4249,abandon,v).
w(5204,1110,abbey,n).
w(966,10468,ability,n).
w(321,30454,able,a).
w(6277,809,abnormal,a).
w(3862,1744,abolish,v).
w(5085,1154,abolition,n).
w(4341,1471,abortion,n).
w(179,52561,about,adv).
w(69,144554,about,prep).
w(3341,2139,above,a).
w(942,10719,above,adv).
w(786,12889,above,prep).
w(2236,3941,abroad,adv).
w(5106,1146,abruptly,adv).

% Question 1.1: ambiguous(+Word)
ambiguous(Word) :- nonvar(Word), w(_,_,Word, Cat1), w(_,_,Word,Cat2), Cat1\==Cat2, !.

% Problem 1.2: display(+Integer)
display(Integer) :- nonvar(Integer), findall(_, (
                            w(SortOrder,_,Word,Category),
                            Integer>SortOrder, 
                            print(Word),
                            write(' '), 
                            print(Category),
                            write('\n')
                        ), Words), Words \== [].

% Problem 3
% Question 3.1: firstlast(?List)
firstlast([Head|[Next|Tail]]) :- Head = Next, Tail = []; firstlast([Head|Tail]).

% Question 3.2: firstlasta(?List)
firstlasta(L) :- append([Elem], [_], L), append([_], [Elem], L).

% Problem 4
score(test,xenia,50).
score(test,alice,99).
score(test,bruce,22).
score(test,carol,77).
score(test,dorit,50).
score(test,erica,22).
score(exam,peter,42).
score(exam,alice,11).
score(exam,bruce,88).
score(exam,carol,33).
score(exam,dorit,50).
score(exam,erica,66).
score(exam,james,77).

% Question 4.1: test(+Integer)
test(Integer) :- nonvar(Integer), score(_,_,Integer).

% Question 4.2
problem :- findall(_, (
                        score(exam, Name, ExamScore), 
                        score(test, Name, TestScore), 
                        (ExamScore * 2) < TestScore, 
                        print(Name), 
                        write('\n')
                    ), Students), Students \== [].


% Problem 5.

% Imp (Imp (Imp p q) p) p

% AlphaImp
%   Neg (Imp (Imp p q) p)
%   p
% BetaImp
%   Imp p q
%   p
% +
%   Neg p
%   p
% AlphaImp
%   Neg p
%   q
%   p
% +
%   Neg p
%   p
% Ext
%   p
%   Neg p
% +
%   p
%   Neg p
% Basic