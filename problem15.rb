# 格子の経路、20 * 20 のパターンは何通りか？
# 2 * 2の場合：→２個、↓２個 4!/2!*2! = 6

# 階乗の計算をどうするかが問題点

# i = 1
# for i in 1..20 do
#   i *= i
# end

def factorial(number)
  (1..number).inject(1,:*)
end

p factorial(40) / (factorial(20) * factorial(20)) == 137846528820
