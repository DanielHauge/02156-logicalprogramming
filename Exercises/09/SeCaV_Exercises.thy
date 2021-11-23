theory SeCaV_Exercises imports SeCaV begin

section \<open>Exercise 1\<close>

proposition \<open>p a \<or> \<not> p a\<close> by metis

section \<open>Exercise 2\<close>

proposition \<open>p a \<longrightarrow> (\<exists>x. p x)\<close> by metis

section \<open>Exercise 3\<close>

proposition \<open>(\<forall>x y z. p x y z a) \<longrightarrow> (\<forall>x. p x x x a)\<close> by metis

section \<open>Exercise 4\<close>

proposition \<open>(\<forall>x y. p x y) \<longrightarrow> (\<forall>x. p x x)\<close> by metis

section \<open>Exercise 5\<close>

proposition \<open>(\<forall>x. p x) \<or> (\<forall>x. q x) \<longrightarrow> (\<forall>x. p x \<or> q x)\<close> by metis

end
