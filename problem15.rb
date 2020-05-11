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

# p array.inject(3,:*) #初期値3に対して、配列の要素をすべて掛ける

def lattice_path_roots(lattice_number:)
  total = lattice_number * 2
  n = ((total - lattice_number + 1)..total).inject(:*)
  r = (1..lattice_number).inject(:*)
  return n / r
end

puts lattice_path_roots(lattice_number: 20)

puts [*21..40].inject(:*) / [*1..20].inject(:*)

