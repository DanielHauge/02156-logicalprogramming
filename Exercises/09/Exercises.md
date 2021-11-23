# Exercises
The shorneted secav for : https://secav.compute.dtu.dk/

## Exercise 1:
```
Dis p[a] Neg p[a]

AlphaDis
  p[a]
  Neg p[a]
Basic 
```

## Exercise 2:
```
Imp (p[a]) (Exi p[0])
AlphaImp
   Neg p[a]
   Exi p[0]
Ext
   Exi p[0]
   Neg p[a]
GammaExi
   p[a]
   Neg p[a]
Basic
```

## Exercise 3:
```
(* The shortened proof *)
Imp (Uni Uni Uni  p[2,1,0,a]) (Uni p[0,0,0,a])

AlphaImp
  Neg (Uni Uni Uni  p[2,1,0,a])
  Uni p[0,0,0,a]
Ext
  Uni p[0,0,0,a]
  Neg (Uni Uni Uni  p[2,1,0,a]) 
DeltaUni
  p[b,b,b,a]
  Neg (Uni Uni Uni  p[2,1,0,a])
Ext
  Neg (Uni Uni Uni  p[2,1,0,a])
  p[b,b,b,a]
GammaUni
  Neg (Uni Uni  p[b,1,0,a])
  p[b,b,b,a]
GammaUni
  Neg (Uni p[b,b,0,a])
  p[b,b,b,a]
GammaUni
  Neg p[b,b,b,a]
  p[b,b,b,a]
Ext
  p[b,b,b,a]
  Neg p[b,b,b,a]
Basic
```

## Exercise 4:
```
(* The shortened proof *)
Imp (Uni Uni p[1,0]) (Uni p[0,0])

AlphaImp
  Neg (Uni Uni p[1,0])
  Uni p[0,0]
Ext
  Uni p[0,0]
  Neg (Uni Uni p[1,0])
DeltaUni
  p[a,a]
  Neg (Uni Uni p[1,0])
Ext
  Neg (Uni Uni p[1,0])
  p[a,a]
GammaUni
  Neg (Uni p[a,0])
  p[a,a]
GammaUni
  Neg p[a,a]
  p[a,a]
Ext
  p[a,a]
  Neg p[a,a]
Basic
```

## Exercise 5:
```
Imp (Dis (Uni p[0])(Uni q[0])) ( Uni Dis p[0] q[0] )

AlphaImp
  Neg (Dis (Uni p[0])(Uni q[0]))
  Uni Dis p[0] q[0]
BetaDis
  Neg (Uni p[0])
  Uni Dis p[0] q[0]
+
  Neg (Uni q[0])
  Uni Dis p[0] q[0]
Ext
  Uni Dis p[0] q[0]
  Neg (Uni p[0])
+
  Uni Dis p[0] q[0]
  Neg (Uni q[0])
DeltaUni
  Dis p[a] q[a]
  Neg (Uni p[0])
+
  Dis p[a] q[a]
  Neg (Uni q[0])
AlphaDis
  p[a]
  q[a]
  Neg (Uni p[0])
+
  p[a]
  q[a]
  Neg (Uni q[0])
Ext
  Neg (Uni p[0])
  p[a]
+
  Neg (Uni q[0])
  q[a]
GammaUni
  Neg p[a]
  p[a]
+
  Neg q[a]
  q[a]
Ext
  p[a]
  Neg p[a]
+
  q[a]
  Neg q[a]
Basic
```