# Exercise 02 for week 3

using template. 
truthtable( (p \<=> q) <=> (~ (p => q) \ ~ (q => p)) ).

## p →q →p
```
truthtable( p => q => p ).
```
```
p=>q=>p  p q  value 
         t t    t
         t f    t
         f t    t
         f f    t
true.
```
Her ses en tautalitet: Uanset værdier af p og q, er logikken altid sand.

## (p →q) →p
```
truthtable( (p => q) => p ).
```
```
(p=>q)=>p  p q  value 
           t t    t
           t f    t
           f t    f
           f f    f
true.
```
Denne er ikke altid sand. kun halvdelen af konfigurationenrne af p og q giver en sandhed.
Den er satisfable og falsifable. Men ikke en tautalitet.

## (p →q →r) →(p →q) →p →r
```
truthtable( (p => q => r) => (p => q) => p => r ).
```
```
(p=>q=>r)=>(p=>q)=>p=>r  p q r  value
                         t t t    t
                         t t f    t
                         t f t    t
                         t f f    t
                         f t t    t
                         f t f    t
                         f f t    t
                         f f f    t
true.
```
Endnu en tautalitet: Kan kun være sand uanset værdier af p q og r

## p →(q →r) →(p →q) →p →r
```
truthtable( p => (q => r) => (p => q) => p => r ).
```
```
p=>(q=>r)=>(p=>q)=>p=>r  p q r  value
                         t t t    t
                         t t f    t
                         t f t    t
                         t f f    t
                         f t t    t
                         f t f    t
                         f f t    t
                         f f f    t
true.
```
Endnu en tautalitet. Den er valid.


## ((p →q) →p) →p
```
truthtable( ((p => q) => p) => p ).
```
```
((p=>q)=>p)=>p  p q  value 
                t t    t
                t f    t
                f t    t
                f f    t
true.
```
Igen, en valid logik.


## p →q →p →p
```
truthtable( p => q => p => p ).
```
```
p=>q=>p=>p  p q  value 
            t t    t
            t f    t
            f t    t
            f f    t
true.
```
Igen en valid logic.
