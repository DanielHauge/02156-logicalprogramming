theory SeCaV_Propositional_Examples imports SeCaV begin

section \<open>Example 1\<close>

proposition \<open>p \<longrightarrow> p\<close> by metis

text \<open>
  Predicate numbers
    0 = p
  \<close>

lemma \<open>\<tturnstile>
  [
    Imp (Pre 0 []) (Pre 0 [])
  ]
  \<close>
proof -
  from AlphaImp have ?thesis if \<open>\<tturnstile>
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

Imp p p

AlphaImp
  Neg p
  p
Ext p
  Neg p
Basic

*)

section \<open>Example 2\<close>

proposition \<open>\<not> p \<longrightarrow> \<not> \<not> \<not> p\<close> by metis

text \<open>
  Predicate numbers
    0 = p
  \<close>

lemma \<open>\<tturnstile>
  [
    Imp (Neg (Pre 0 [])) (Neg (Neg (Neg (Pre 0 []))))
  ]
  \<close>
proof -
  from AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Neg (Pre 0 [])),
      Neg (Neg (Neg (Pre 0 [])))
    ]
    \<close>
    using that by simp
  with Basic show ?thesis
    by simp
qed

(*

Imp (Neg p) (Neg (Neg (Neg p)))

AlphaImp
  Neg (Neg p)
  Neg (Neg (Neg p))
Basic

*)

section \<open>Example 3\<close>

proposition \<open>p \<and> q \<longrightarrow> r \<longrightarrow> p \<and> r\<close> by metis

text \<open>
  Predicate numbers
    0 = p
    1 = q
    2 = r
  \<close>

lemma \<open>\<tturnstile>
  [
    Imp (Con (Pre 0 []) (Pre 1 [])) (Imp (Pre 2 []) (Con (Pre 0 []) (Pre 2 [])))
  ]
  \<close>
proof -
  from AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Con (Pre 0 []) (Pre 1 [])),
      Imp (Pre 2 []) (Con (Pre 0 []) (Pre 2 []))
    ]
    \<close>
    using that by simp
  with AlphaCon have ?thesis if \<open>\<tturnstile>
    [
      Neg (Pre 0 []),
      Neg (Pre 1 []),
      Imp (Pre 2 []) (Con (Pre 0 []) (Pre 2 []))
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Imp (Pre 2 []) (Con (Pre 0 []) (Pre 2 [])),
      Neg (Pre 0 [])
    ]
    \<close>
    using that by simp
  with AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Pre 2 []),
      Con (Pre 0 []) (Pre 2 []),
      Neg (Pre 0 [])
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Con (Pre 0 []) (Pre 2 []),
      Neg (Pre 2 []),
      Neg (Pre 0 [])
    ]
    \<close>
    using that by simp
  with BetaCon have ?thesis if \<open>\<tturnstile>
    [
      Pre 0 [],
      Neg (Pre 2 []),
      Neg (Pre 0 [])
    ]
    \<close> and \<open>\<tturnstile>
    [
      Pre 2 [],
      Neg (Pre 2 []),
      Neg (Pre 0 [])
    ]
    \<close>
    using that by simp
  with Basic show ?thesis
    by simp
qed

(*

Imp (Con p q) (Imp r (Con p r))

AlphaImp
  Neg (Con p q)
  Imp r (Con p r)
AlphaCon
  Neg p
  Neg q
  Imp r (Con p r)
Ext
  Imp r (Con p r)
  Neg p
AlphaImp
  Neg r
  Con p r
  Neg p
Ext
  Con p r
  Neg r
  Neg p
BetaCon
  p
  Neg r
  Neg p
+
  r
  Neg r
  Neg p
Basic

*)

section \<open>Example 4\<close>

proposition \<open>p \<and> q \<longrightarrow> q \<and> p\<close> by metis

text \<open>
  Predicate numbers
    0 = p
    1 = q
  \<close>

lemma \<open>\<tturnstile>
  [
    Imp (Con (Pre 0 []) (Pre 1 [])) (Con (Pre 1 []) (Pre 0 []))
  ]
  \<close>
proof -
  from AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Con (Pre 0 []) (Pre 1 [])),
      Con (Pre 1 []) (Pre 0 [])
    ]
    \<close>
    using that by simp
  with AlphaCon have ?thesis if \<open>\<tturnstile>
    [
      Neg (Pre 0 []),
      Neg (Pre 1 []),
      Con (Pre 1 []) (Pre 0 [])
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Con (Pre 1 []) (Pre 0 []),
      Neg (Pre 0 []),
      Neg (Pre 1 [])
    ]
    \<close>
    using that by simp
  with BetaCon have ?thesis if \<open>\<tturnstile>
    [
      Pre 1 [],
      Neg (Pre 0 []),
      Neg (Pre 1 [])
    ]
    \<close> and \<open>\<tturnstile>
    [
      Pre 0 [],
      Neg (Pre 0 []),
      Neg (Pre 1 [])
    ]
    \<close>
    using that by simp
  with Basic show ?thesis
    by simp
qed

(*

Imp (Con p q) (Con q p)

AlphaImp
  Neg (Con p q)
  Con q p
AlphaCon
  Neg p
  Neg q
  Con q p
Ext
  Con q p
  Neg p
  Neg q
BetaCon
  q
  Neg p
  Neg q
+
  p
  Neg p
  Neg q
Basic

*)

section \<open>Example 5\<close>

proposition \<open>p \<or> q \<longrightarrow> q \<or> p\<close> by metis

text \<open>
  Predicate numbers
    0 = p
    1 = q
  \<close>

lemma \<open>\<tturnstile>
  [
    Imp (Dis (Pre 0 []) (Pre 1 [])) (Dis (Pre 1 []) (Pre 0 []))
  ]
  \<close>
proof -
  from AlphaImp have ?thesis if \<open>\<tturnstile>
    [
      Neg (Dis (Pre 0 []) (Pre 1 [])),
      Dis (Pre 1 []) (Pre 0 [])
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Dis (Pre 1 []) (Pre 0 []),
      Neg (Dis (Pre 0 []) (Pre 1 []))
    ]
    \<close>
    using that by simp
  with AlphaDis have ?thesis if \<open>\<tturnstile>
    [
      Pre 1 [],
      Pre 0 [],
      Neg (Dis (Pre 0 []) (Pre 1 []))
    ]
    \<close>
    using that by simp
  with Ext have ?thesis if \<open>\<tturnstile>
    [
      Neg (Dis (Pre 0 []) (Pre 1 [])),
      Pre 0 [],
      Pre 1 []
    ]
    \<close>
    using that by simp
  with BetaDis have ?thesis if \<open>\<tturnstile>
    [
      Neg (Pre 0 []),
      Pre 0 [],
      Pre 1 []
    ]
    \<close> and \<open>\<tturnstile>
    [
      Neg (Pre 1 []),
      Pre 0 [],
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

Imp (Dis p q) (Dis q p)

AlphaImp
  Neg (Dis p q)
  Dis q p
Ext
  Dis q p
  Neg (Dis p q)
AlphaDis
  q
  p
  Neg (Dis p q)
Ext
  Neg (Dis p q)
  p
  q
BetaDis
  Neg p
  p
  q
+
  Neg q
  p
  q
Ext
  p
  Neg p
+
  q
  Neg q
Basic

*)

end
