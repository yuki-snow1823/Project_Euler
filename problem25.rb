# フィボナッチ数列は以下の漸化式で定義される:

# Fn = Fn-1 + Fn-2, ただし F1 = 1, F2 = 1.
# 最初の12項は以下である.

# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3
# F5 = 5
# F6 = 8
# F7 = 13
# F8 = 21
# F9 = 34
# F10 = 55
# F11 = 89
# F12 = 144
# 12番目の項, F12が3桁になる最初の項である.

# 1000桁になる最初の項の番号を答えよ.

# まず普通にフィボナッチの項を求める配列を書く

# def fibonacchi(num)
#   return 1 if num == 1
#   return 1 if num == 2
#   return fibonacchi(num - 1) + fibonacchi(num - 2)
# end

# i = 1
# data = 0
# answer = []
# until data >= 100000000 do
#   i += 1
#   answer << fibonacchi(i)
#   data = answer.last
# end

# p answer.size + 1

fib = [1,1]
i = 1; n = ""

until n.length == 1000 do
  n = (fib[i] + fib[i-1]).to_s
  if (n.length < 1000)
    fib.push((n).to_i)
  end
  i+= 1
end

puts (i+1)
