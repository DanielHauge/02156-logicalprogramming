
Givet: (p → q → r) → (p → q) → p → r.

Sandhedstabellen er generet med logic.pl:
```prolog
(p=>q=>r)=>(p=>q)=>p=>r  p q r  value 
                         t t t    t   
                         t t f    t   
                         t f t    t   
                         t f f    t   
                         f t t    t   
                         f t f    t   
                         f f t    t   
                         f f f    t
```
Det ses at være et gyldigt udtryk.

