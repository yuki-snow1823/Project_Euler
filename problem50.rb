# 素数41は6つの連続する素数の和として表せる:

# 41 = 2 + 3 + 5 + 7 + 11 + 13.
# 100未満の素数を連続する素数の和で表したときにこれが最長になる.

# 同様に, 連続する素数の和で1000未満の素数を表したときに最長になるのは953で21項を持つ.

# 100万未満の素数を連続する素数の和で表したときに最長になるのはどの素数か?

require "prime"

p prime_numbers_array =  Prime.each(100).to_a

answer,answer_array = 0,[]

prime_numbers_array.each do |i|
  answer += i
  answer_array << answer
  break if answer_array.last > 1000
end

p answer_array

# 別に開始地点は「２」じゃなくてもいいからこれだとずれる。
# 2,5,10の10を引けば連続しているし、953は素数
