theory SeCaV_Propositional_Exercises imports SeCaV begin

section \<open>Exercise 1\<close>

proposition \<open>p \<and> q \<longrightarrow> p\<close> by metis

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
  Neg q
Basic
*)

section \<open>Exercise 2\<close>

proposition \<open>p \<and> q \<longrightarrow> q\<close> by metis

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
  Neg p
  Neg q
Basic
*)
section \<open>Exercise 3\<close>

proposition \<open>(p \<longrightarrow> q) \<or> (q \<longrightarrow> r)\<close> by metis



section \<open>Exercise 4\<close>

proposition \<open>(p \<longrightarrow> q) \<longrightarrow> p \<longrightarrow> q\<close> by metis

section \<open>Exercise 5\<close>

proposition \<open>p \<longrightarrow> (p \<longrightarrow> q) \<longrightarrow> q\<close> by metis

section \<open>Exercise 6\<close>

proposition \<open>p \<and> (p \<longrightarrow> q) \<longrightarrow> q\<close> by metis

section \<open>Exercise 7\<close>

proposition \<open>p \<longrightarrow> q \<longrightarrow> p\<close> by metis

section \<open>Exercise 8\<close>

proposition \<open>(p \<longrightarrow> q \<longrightarrow> r) \<longrightarrow> (p \<longrightarrow> q) \<longrightarrow> p \<longrightarrow> r\<close> by metis

section \<open>Exercise 9\<close>

proposition \<open>p \<or> q \<longrightarrow> q \<or> p\<close> by metis

section \<open>Exercise 10\<close>

proposition \<open>p \<or> (p \<longrightarrow> q)\<close> by metis

end
