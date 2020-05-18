# d(n) を n の真の約数の和と定義する. (真の約数とは n 以外の約数のことである. )
# もし, d(a) = b かつ d(b) = a (a ≠ b のとき) を満たすとき, a と b は友愛数(親和数)であるという.

# 例えば, 220 の約数は 1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110 なので d(220) = 284 である.
# また, 284 の約数は 1, 2, 4, 71, 142 なので d(284) = 220 である.

# それでは10000未満の友愛数の和を求めよ.

# 約数の和と、約数の和の約数の和が元の数と同じ

# 約数を求めるメソッド
def divide?(num)
  answer = []
  i = 1
  while i <= num/2 do
    if num % i == 0
      answer << i
    end
    i += 1
  end
  answer
end
# p divide?(8).sum  ==  divide?(divide?(8).sum).sum こう言うのはダメ
clear = []
j = 2
until j == 10000 do
  clear << j if j  ==  divide?(divide?(j).sum).sum && j != divide?(j).sum
  j += 1
end

p clear.sum == 31626
