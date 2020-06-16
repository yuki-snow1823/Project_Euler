# Christian Goldbachは全ての奇合成数は
# 平方数の2倍と素数の和で表せると予想した.

# 9 = 7 + 2×1**2
# 15 = 7 + 2×2**2
# 21 = 3 + 2×3**2
# 25 = 7 + 2×3**2
# 27 = 19 + 2×2**2
# 33 = 31 + 2×1**2

# 後に, この予想は誤りであることが分かった.

# 平方数の2倍と素数の和で表せない最小の奇合成数はいくつか?

# 平方数の二倍
# 素数の和
# では表せないつまり奇数
# ex 111 7**2**2+13 平方数の2倍+素数
require 'prime'
class Integer
  def goldbach?
    # 1.upto(1.0/0.0)は際限なく行う
    1.upto(1.0/0.0) do |i|
      n = 2 * i * i
      return false if n > self
      # 平方数の二倍+素数であるか？
      return true  if (self - n).prime?
    end
  end
end
 
n = 33
while n.goldbach?
  n = n + 2
  n = n + 2 while n.prime?
end
puts n
