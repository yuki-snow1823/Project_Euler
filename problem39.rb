# 辺の長さが {a,b,c} と整数の3つ組である直角三角形を考え, 
# その周囲の長さを p とする. p = 120のときには3つの解が存在する:

# {20,48,52}, {24,45,51}, {30,40,50}

# p ≤ 1000 のとき解の数が最大になる p はいくつか?

# array = (1..100).to_a

# answer = []
# array.repeated_combination(3).each do |a,b,c|
#   answer << [[a,b,c].sum,[a,b,c]] if a**2 + b**2 == c **2 && a+b+c <= 1000
# end

# p answer.sort.map{|a| a[0]}


array = (1..1000).to_a

answer = []
array.repeated_combination(3).each do |a,b,c|
  answer << [[a,b,c].sum,[a,b,c]] if a**2 + b**2 == c **2 && a+b+c <= 1000
end

p answer.sort.map{|a| a[0]}.tally.to_a.sort {|a,b| a[1] <=> b[1]}.reverse.first[0]
