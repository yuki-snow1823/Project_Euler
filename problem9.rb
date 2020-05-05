# ピタゴラス数(ピタゴラスの定理を満たす自然数)とは a < b < c で以下の式を満たす数の組である.
# a^2 + b^2 = c^2
# 例えば, 3^2 + 4^2 = 9 + 16 = 25 = 5^2 である.
# a + b + c = 1000 となるピタゴラスの三つ組が一つだけ存在する.
# これらの積 abc を計算しなさい.

arr = []
(1..333).each do |n|
  (n + 1).upto(998) do |o|
    (o + 1).upto(998) do |q|
      if n + o + q == 1000 && n*n + o*o  == q*q 
        arr.push(n, o, q)
      end
    end
  end
end
puts arr.inject(:*)
