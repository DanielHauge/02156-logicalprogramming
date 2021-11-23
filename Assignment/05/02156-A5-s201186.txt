% Problem 1
% Question 1.1
member1([Head|Tail]) :- member(Head, Tail), !.

% Question 1.2
p([], []) :- !.
p(List, [List]) :- List \= [_|_], !. % Element that is being called with P is a sole element.
p([Head|Tail],Resultat) :- 
    \+ member1([Head|Tail]), % Each element must not occur twice.
    p(Head,UdpakketHead), % When head is a nested element, it will be recursively unpacked.
    p(Tail,UdpakketTail), % Tail is always a list, it should be unpacked, filteres and sorted.
    append(UdpakketHead,UdpakketTail,R),
    sort(R, Resultat). % All lists and sublists that are being computed should be sorted.

% Problem 2
:- ensure_loaded(database).
% Question 2.1
selectlist(Resultat) :- 
    findall(Word, (
        w(SortOrder, _, Word, WordClass), 
        SortOrder < 101, 
        (WordClass = n; WordClass = v)
    ), Resultat).

% Question 2.2
dump :- 
    findall(Word, (w(_, _, Word, a),w(_, _, Word, adv)), R), % Finds all words that are both a and adv
    setof(Word, member(Word, R), RR), % Removes duplicates
    findall(_,
        (
            member(W, RR), 
            findall(WC, (w(_,_,W,WC), WC \== a, WC \== adv), AddWc), % Find additional categories of (a and adv) words.
            length(AddWc, L), L > 0, % There has to be atleast one additional category
            findall(_, (member(ExtraCat, AddWc), write(W), write(' ') ,write(ExtraCat), nl), _) % Prints each word and additional category
        ), 
    _).

% Question 4
% Imp (Exi Uni p[1,0]) (Uni Exi p[0,1])

% AlphaImp
%    Neg (Exi Uni p[1,0])
%    Uni Exi p[0,1]
% DeltaExi
%    Neg (Uni p[a,0])
%    Uni Exi p[0,1]
% Ext
%    Uni Exi p[0,1]
%    Neg (Uni p[a,0])
% DeltaUni
%    Exi p[0,b]
%    Neg (Uni p[a,0])
% GammaExi
%    p[a,b]
%    Neg (Uni p[a,0])
% Ext
%    Neg (Uni p[a,0])
%    p[a,b]
% GammaUni
%    Neg p[a,b]
%    p[a,b]
% Ext
%    p[a,b]
%    Neg p[a,b]
% Basic