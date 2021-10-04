theory Scratch
imports Main
begin
fun remove:: "'a \<Rightarrow> 'a list \<Rightarrow> 'a list"
where
"remove x [] = []" |
"remove x (y#ys) = (if x=y then ys else y#(remove x ys))"

value "remove (2::int) [1,2,3]" (* this is a simple test *)
end