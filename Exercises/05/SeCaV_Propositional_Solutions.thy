theory SeCaV_Propositional_Solutions imports SeCaV begin

section \<open>Exercise 1\<close>

proposition \<open>p \<and> q \<longrightarrow> p\<close> by metis

text \<open>
  Predicate numbers
    0 = p
    1 = q
  \<close>

lemma \<open>\<tturnstile>
  [
    Imp (Con (Pre 0 []) (Pre 1 [])) (Pre 0 [])
  ]
  \<close>
proof -
  from AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Con (Pre 0 []) (Pre 1 [])),
      Pre 0 []
    ]
    \<close>
    using that by simp
  with AlphaCon have ?thesis if \<open>\<tturnstile>
    [
      Neg (Pre 0 []),
      Neg (Pre 1 []),
      Pre 0 []
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Pre 0 [],
      Neg (Pre 0 [])
    ]
    \<close>
    using that by simp
  with Basic show ?thesis
    by simp
qed

(*

Imp (Con p q) p

AlphaImp
  Neg (Con p q)
  p
AlphaCon
  Neg p
  Neg q
  p
Ext
  p
  Neg p
Basic

*)

section \<open>Exercise 2\<close>

proposition \<open>p \<and> q \<longrightarrow> q\<close> by metis

text \<open>
  Predicate numbers
    0 = p
    1 = q
  \<close>

lemma \<open>\<tturnstile>
  [
    Imp (Con (Pre 0 []) (Pre 1 [])) (Pre 1 [])
  ]
  \<close>
proof -
  from AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Con (Pre 0 []) (Pre 1 [])),
      Pre 1 []
    ]
    \<close>
    using that by simp
  with AlphaCon have ?thesis if \<open>\<tturnstile>
    [
      Neg (Pre 0 []),
      Neg (Pre 1 []),
      Pre 1 []
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Pre 1 [],
      Neg (Pre 1 [])
    ]
    \<close>
    using that by simp
  with Basic show ?thesis
    by simp
qed

(*

Imp (Con p q) q

AlphaImp
  Neg (Con p q)
  q
AlphaCon
  Neg p
  Neg q
  q
Ext
  q
  Neg q
Basic

*)

section \<open>Exercise 3\<close>

proposition \<open>(p \<longrightarrow> q) \<or> (q \<longrightarrow> r)\<close> by metis

text \<open>
  Predicate numbers
    0 = p
    1 = q
    2 = r
  \<close>

lemma \<open>\<tturnstile>
  [
    Dis (Imp (Pre 0 []) (Pre 1 [])) (Imp (Pre 1 []) (Pre 2 []))
  ]
  \<close>
proof -
  from AlphaDis have ?thesis if \<open>\<tturnstile>
    [
      Imp (Pre 0 []) (Pre 1 []),
      Imp (Pre 1 []) (Pre 2 [])
    ]
    \<close>
    using that by simp
  with AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Pre 0 []),
      Pre 1 [],
      Imp (Pre 1 []) (Pre 2 [])
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Imp (Pre 1 []) (Pre 2 []),
      Pre 1 []
    ]
    \<close>
    using that by simp
  with AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Pre 1 []),
      Pre 2 [],
      Pre 1 []
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Pre 1 [],
      Neg (Pre 1 [])
    ]
    \<close>
    using that by simp
  with Basic show ?thesis
    by simp
qed

(*

Dis (Imp p q) (Imp q r)

AlphaDis
  Imp p q
  Imp q r
AlphaImp
  Neg p
  q
  Imp q r
Ext
  Imp q r
  q
AlphaImp
  Neg q
  r
  q
Ext
  q
  Neg q
Basic

*)

section \<open>Exercise 4\<close>

proposition \<open>(p \<longrightarrow> q) \<longrightarrow> p \<longrightarrow> q\<close> by metis

text \<open>
  Predicate numbers
    0 = p
    1 = q
  \<close>

lemma \<open>\<tturnstile>
  [
    Imp (Imp (Pre 0 []) (Pre 1 [])) (Imp (Pre 0 []) (Pre 1 []))
  ]
  \<close>
proof -
  from AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Imp (Pre 0 []) (Pre 1 [])),
      Imp (Pre 0 []) (Pre 1 [])
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Imp (Pre 0 []) (Pre 1 []),
      Neg (Imp (Pre 0 []) (Pre 1 []))
    ]
    \<close>
    using that by simp
  with Basic show ?thesis
    by simp
qed

(*

Imp (Imp p q) (Imp p q)

AlphaImp
  Neg (Imp p q)
  Imp p q
Ext
  Imp p q
  Neg (Imp p q)
Basic

*)

section \<open>Exercise 5\<close>

proposition \<open>p \<longrightarrow> (p \<longrightarrow> q) \<longrightarrow> q\<close> by metis

text \<open>
  Predicate numbers
    0 = p
    1 = q
  \<close>

lemma \<open>\<tturnstile>
  [
    Imp (Pre 0 []) (Imp (Imp (Pre 0 []) (Pre 1 [])) (Pre 1 []))
  ]
  \<close>
proof -
  from AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Pre 0 []),
      Imp (Imp (Pre 0 []) (Pre 1 [])) (Pre 1 [])
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Imp (Imp (Pre 0 []) (Pre 1 [])) (Pre 1 []),
      Neg (Pre 0 [])
    ]
    \<close>
    using that by simp
  with AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Imp (Pre 0 []) (Pre 1 [])),
      Pre 1 [],
      Neg (Pre 0 [])
    ]
    \<close>
    using that by simp
  with BetaImp have ?thesis if \<open>\<tturnstile>
    [
      Pre 0 [],
      Pre 1 [],
      Neg (Pre 0 [])
    ]
    \<close> and \<open>\<tturnstile>
    [
      Neg (Pre 1 []),
      Pre 1 [],
      Neg (Pre 0 [])
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Pre 0 [],
      Neg (Pre 0 [])
    ]
    \<close> and \<open>\<tturnstile>
    [
      Pre 1 [],
      Neg (Pre 1 [])
    ]
    \<close>
    using that by simp
  with Basic show ?thesis
    by simp
qed

(*

Imp p (Imp (Imp p q) q)

AlphaImp
  Neg p
  Imp (Imp p q) q
Ext
  Imp (Imp p q) q
  Neg p
AlphaImp
  Neg (Imp p q)
  q
  Neg p
BetaImp
  p
  q
  Neg p
+
  Neg q
  q
  Neg p
Ext
  p
  Neg p
+
  q
  Neg q
Basic

*)

section \<open>Exercise 6\<close>

proposition \<open>p \<and> (p \<longrightarrow> q) \<longrightarrow> q\<close> by metis

text \<open>
  Predicate numbers
    0 = p
    1 = q
  \<close>

lemma \<open>\<tturnstile>
  [
    Imp (Con (Pre 0 []) (Imp (Pre 0 []) (Pre 1 []))) (Pre 1 [])
  ]
  \<close>
proof -
  from AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Con (Pre 0 []) (Imp (Pre 0 []) (Pre 1 []))),
      Pre 1 []
    ]
    \<close>
    using that by simp
  with AlphaCon have ?thesis if \<open>\<tturnstile>
    [
      Neg (Pre 0 []),
      Neg (Imp (Pre 0 []) (Pre 1 [])),
      Pre 1 []
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Neg (Imp (Pre 0 []) (Pre 1 [])),
      Neg (Pre 0 []),
      Pre 1 []
    ]
    \<close>
    using that by simp
  with BetaImp have ?thesis if \<open>\<tturnstile>
    [
      Pre 0 [],
      Neg (Pre 0 []),
      Pre 1 []
    ]
    \<close> and \<open>\<tturnstile>
    [
      Neg (Pre 1 []),
      Neg (Pre 0 []),
      Pre 1 []
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Pre 0 [],
      Neg (Pre 0 [])
    ]
    \<close> and \<open>\<tturnstile>
    [
      Pre 1 [],
      Neg (Pre 1 [])
    ]
    \<close>
    using that by simp
  with Basic show ?thesis
    by simp
qed

(*

Imp (Con p (Imp p q)) q

AlphaImp
  Neg (Con p (Imp p q))
  q
AlphaCon
  Neg p
  Neg (Imp p q)
  q
Ext
  Neg (Imp p q)
  Neg p
  q
BetaImp
  p
  Neg p
  q
+
  Neg q
  Neg p
  q
Ext
  p
  Neg p
+
  q
  Neg q
Basic

*)

section \<open>Exercise 7\<close>

proposition \<open>p \<longrightarrow> q \<longrightarrow> p\<close> by metis

text \<open>
  Predicate numbers
    0 = p
    1 = q
  \<close>

lemma \<open>\<tturnstile>
  [
    Imp (Pre 0 []) (Imp (Pre 1 []) (Pre 0 []))
  ]
  \<close>
proof -
  from AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Pre 0 []),
      Imp (Pre 1 []) (Pre 0 [])
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Imp (Pre 1 []) (Pre 0 []),
      Neg (Pre 0 [])
    ]
    \<close>
    using that by simp
  with AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Pre 1 []),
      Pre 0 [],
      Neg (Pre 0 [])
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Pre 0 [],
      Neg (Pre 0 [])
    ]
    \<close>
    using that by simp
  with Basic show ?thesis
    by simp
qed

(*

Imp p (Imp q p)

AlphaImp
  Neg p
  Imp q p
Ext
  Imp q p
  Neg p
AlphaImp
  Neg q
  p
  Neg p
Ext
  p
  Neg p
Basic

*)

section \<open>Exercise 8\<close>

proposition \<open>(p \<longrightarrow> q \<longrightarrow> r) \<longrightarrow> (p \<longrightarrow> q) \<longrightarrow> p \<longrightarrow> r\<close> by metis

text \<open>
  Predicate numbers
    0 = p
    1 = q
    2 = r
  \<close>

lemma \<open>\<tturnstile>
  [
    Imp (Imp (Pre 0 []) (Imp (Pre 1 []) (Pre 2 []))) (Imp (Imp (Pre 0 []) (Pre 1 [])) (Imp (Pre 0 []) (Pre 2 [])))
  ]
  \<close>
proof -
  from AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Imp (Pre 0 []) (Imp (Pre 1 []) (Pre 2 []))),
      Imp (Imp (Pre 0 []) (Pre 1 [])) (Imp (Pre 0 []) (Pre 2 []))
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Imp (Imp (Pre 0 []) (Pre 1 [])) (Imp (Pre 0 []) (Pre 2 [])),
      Neg (Imp (Pre 0 []) (Imp (Pre 1 []) (Pre 2 [])))
    ]
    \<close>
    using that by simp
  with AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Imp (Pre 0 []) (Pre 1 [])),
      Imp (Pre 0 []) (Pre 2 []),
      Neg (Imp (Pre 0 []) (Imp (Pre 1 []) (Pre 2 [])))
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Imp (Pre 0 []) (Pre 2 []),
      Neg (Imp (Pre 0 []) (Pre 1 [])),
      Neg (Imp (Pre 0 []) (Imp (Pre 1 []) (Pre 2 [])))
    ]
    \<close>
    using that by simp
  with AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Pre 0 []),
      Pre 2 [],
      Neg (Imp (Pre 0 []) (Pre 1 [])),
      Neg (Imp (Pre 0 []) (Imp (Pre 1 []) (Pre 2 [])))
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Neg (Imp (Pre 0 []) (Pre 1 [])),
      Neg (Pre 0 []),
      Pre 2 [],
      Neg (Imp (Pre 0 []) (Imp (Pre 1 []) (Pre 2 [])))
    ]
    \<close>
    using that by simp
  with BetaImp have ?thesis if \<open>\<tturnstile>
    [
      Pre 0 [],
      Neg (Pre 0 []),
      Pre 2 [],
      Neg (Imp (Pre 0 []) (Imp (Pre 1 []) (Pre 2 [])))
    ]
    \<close> and \<open>\<tturnstile>
    [
      Neg (Pre 1 []),
      Neg (Pre 0 []),
      Pre 2 [],
      Neg (Imp (Pre 0 []) (Imp (Pre 1 []) (Pre 2 [])))
    ]
    \<close>
    using that by simp
  with Basic have ?thesis if \<open>\<tturnstile>
    [
      Neg (Pre 1 []),
      Neg (Pre 0 []),
      Pre 2 [],
      Neg (Imp (Pre 0 []) (Imp (Pre 1 []) (Pre 2 [])))
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Neg (Imp (Pre 0 []) (Imp (Pre 1 []) (Pre 2 []))),
      Neg (Pre 0 []),
      Neg (Pre 1 []),
      Pre 2 []
    ]
    \<close>
    using that by simp
  with BetaImp have ?thesis if \<open>\<tturnstile>
    [
      Pre 0 [],
      Neg (Pre 0 []),
      Neg (Pre 1 []),
      Pre 2 []
    ]
    \<close> and \<open>\<tturnstile>
    [
      Neg (Imp (Pre 1 []) (Pre 2 [])),
      Neg (Pre 0 []),
      Neg (Pre 1 []),
      Pre 2 []
    ]
    \<close>
    using that by simp
  with Basic have ?thesis if \<open>\<tturnstile>
    [
      Neg (Imp (Pre 1 []) (Pre 2 [])),
      Neg (Pre 0 []),
      Neg (Pre 1 []),
      Pre 2 []
    ]
    \<close>
    using that by simp
  with BetaImp have ?thesis if \<open>\<tturnstile>
    [
      Pre 1 [],
      Neg (Pre 0 []),
      Neg (Pre 1 []),
      Pre 2 []
    ]
    \<close> and \<open>\<tturnstile>
    [
      Neg (Pre 2 []),
      Neg (Pre 0 []),
      Neg (Pre 1 []),
      Pre 2 []
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Pre 1 [],
      Neg (Pre 1 [])
    ]
    \<close> and \<open>\<tturnstile>
    [
      Pre 2 [],
      Neg (Pre 2 [])
    ]
    \<close>
    using that by simp
  with Basic show ?thesis
    by simp
qed

(*

Imp (Imp p (Imp q r)) (Imp (Imp p q) (Imp p r))

AlphaImp
  Neg (Imp p (Imp q r))
  Imp (Imp p q) (Imp p r)
Ext
  Imp (Imp p q) (Imp p r)
  Neg (Imp p (Imp q r))
AlphaImp
  Neg (Imp p q)
  Imp p r
  Neg (Imp p (Imp q r))
Ext
  Imp p r
  Neg (Imp p q)
  Neg (Imp p (Imp q r))
AlphaImp
  Neg p
  r
  Neg (Imp p q)
  Neg (Imp p (Imp q r))
Ext
  Neg (Imp p q)
  Neg p
  r
  Neg (Imp p (Imp q r))
  BetaImp
  p
  Neg p
  r
  Neg (Imp p (Imp q r))
+  Neg q
  Neg p
  r
  Neg (Imp p (Imp q r))
 Basic
  Neg q
  Neg p
  r
  Neg (Imp p (Imp q r))
Ext
  Neg (Imp p (Imp q r))
  Neg p
  Neg q
  r
BetaImp
  p
  Neg p
  Neg q
  r
+
  Neg (Imp q r)
  Neg p
  Neg q
  r
Basic
  Neg (Imp q r)
  Neg p
  Neg q
  r
BetaImp
  q
  Neg p
  Neg q
  r
+  Neg r
  Neg p
  Neg q
  r
Ext
  q
  Neg q
+
  r
  Neg r
Basic

*)

section \<open>Exercise 9\<close>

proposition \<open>\<not> \<not> p \<longrightarrow> p\<close> by metis

text \<open>
  Predicate numbers
    0 = p
  \<close>

lemma \<open>\<tturnstile>
  [
    Imp (Neg (Neg (Pre 0 []))) (Pre 0 [])
  ]
  \<close>
proof -
  from AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Neg (Neg (Pre 0 []))),
      Pre 0 []
    ]
    \<close>
    using that by simp
  with NegNeg have ?thesis if \<open>\<tturnstile>
    [
      Neg (Pre 0 []),
      Pre 0 []
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Pre 0 [],
      Neg (Pre 0 [])
    ]
    \<close>
    using that by simp
  with Basic show ?thesis
    by simp
qed

(*

Imp (Neg (Neg p)) p

AlphaImp
  Neg (Neg (Neg p))
  p
NegNeg
  Neg p
  p
Ext
  p
  Neg p
Basic

*)

section \<open>Exercise 10\<close>

proposition \<open>p \<or> (p \<longrightarrow> q)\<close> by metis

text \<open>
  Predicate numbers
    0 = p
    1 = q
  \<close>

lemma \<open>\<tturnstile>
  [
    Dis (Pre 0 []) (Imp (Pre 0 []) (Pre 1 []))
  ]
  \<close>
proof -
  from AlphaDis have ?thesis if \<open>\<tturnstile>
    [
      Pre 0 [],
      Imp (Pre 0 []) (Pre 1 [])
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Imp (Pre 0 []) (Pre 1 []),
      Pre 0 []
    ]
    \<close>
    using that by simp
  with AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Pre 0 []),
      Pre 1 [],
      Pre 0 []
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Pre 0 [],
      Neg (Pre 0 [])
    ]
    \<close>
    using that by simp
  with Basic show ?thesis
    by simp
qed

(*

Dis p (Imp p q)

AlphaDis
  p
  Imp p q
Ext
  Imp p q
  p
AlphaImp
  Neg p
  q
  p
Ext
  p
  Neg p
Basic

*)

end
