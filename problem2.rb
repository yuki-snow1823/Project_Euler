# フィボナッチ数列の項は前の2つの項の和である. 最初の2項を 1, 2 とすれば, 最初の10項は以下の通りである.
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# 数列の項の値が400万以下の, 偶数値の項の総和を求めよ.

# フィボナッチ数列

def fib(n)
  if n == 0 || n == 1
    return 1
  end
  p fib(n - 2) + fib(n - 1)
end

#これだと重くて計算しきれない

# variable = 10
# array = []

# # フィボナッチ数列を作成する処理
# for num in 1..variable
#   # 最初の２項を指定
#   if num <= 2
#     array.push(num.to_i)
#     # p array.last(2)
#   else
#     # p array.last(2).sum
#     array.push(array.last(2).sum)
#   end
# end

# # 偶数を足し合わせる処理
# p array.select{|e| e.even? }.su

# 答え


n1, n2 = 1, 2
sequence = []
sequence.push(n1, n2)
# 例外処理

next_number = n1+n2

# フィボナッチ数列を入れまくる
begin
  sequence << next_number
  n1 = n2 # 上の定義に影響及ぼす
  n2 = next_number
  next_number = n1+n2
end while next_number < 4000000

# 偶数を足せ
# 答えの初期化
sum = 0
sequence.each do |number|
  if(number%2 == 0)
    sum += number
  end
end
puts "Answer: " + sum.to_s
