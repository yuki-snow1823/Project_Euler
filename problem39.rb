# 辺の長さが {a,b,c} と整数の3つ組である直角三角形を考え, 
# その周囲の長さを p とする. p = 120のときには3つの解が存在する:

# {20,48,52}, {24,45,51}, {30,40,50}

# p ≤ 1000 のとき解の数が最大になる p はいくつか?

array = (1..400).to_a

answer = 0
array.repeated_combination(3).each do |a,b,c|
  answer = [a,b,c].sum if a**2 + b**2 == c **2 && answer < [a,b,c].sum && a+b+c <= 1000
  p [a,b,c] if [a,b,c].sum == 960 &&  a**2 + b**2 == c **2 
end

p answer
