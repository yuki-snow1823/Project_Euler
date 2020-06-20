# 項差3330の等差数列1487, 4817, 8147は次の2つの変わった性質を持つ.

# (i)3つの項はそれぞれ素数である.
# (ii)各項は他の項の置換で表される.
# 1, 2, 3桁の素数にはこのような性質を持った数列は存在しないが, 4桁の増加列にはもう1つ存在する.

# それではこの数列の3つの項を連結した12桁の数を求めよ.

require "prime"

arr = (1000..9999).to_a.select!{ |a| a.prime? && a <= 3330 }

arr.select!{|num| num if num.to_s.split("").sort == (num+3330).to_s.split("").sort && (num+3330).prime? && (num+6660).prime? }

p arr.last.to_s + (arr.last+3330).to_s + (arr.last+6660).to_s  == "296962999629" #true
