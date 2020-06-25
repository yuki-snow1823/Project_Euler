# 12345から3つ選ぶ選び方は10通りである.

# 123, 124, 125, 134, 135, 145, 234, 235, 245, 345.
# 組み合わせでは, 以下の記法を用いてこのことを表す: 5C3 = 10.

# 一般に, r ≤ n について nCr = n!/(r!(n-r)!) である. ここで, n! = n×(n−1)×...×3×2×1, 0! = 1 と階乗を定義する.

# n = 23 になるまで, これらの値が100万を超えることはない: 23C10 = 1144066.

# 1 ≤ n ≤ 100 について, 100万を超える nCr は何通りあるか?

class Integer
  def factorial
    (1..self).inject(1,:*)
  end
end

j, answer = 0, 0
100.times do |i|
  i += 1
  p "#{i}番目の組み合わせ"
  while j < i do
    j += 1
    total_number =  i.factorial / j.factorial / (i-j).factorial
    answer += 1 if total_number > 1000000
  end
  j = 0
end

p answer == 4075 #true
