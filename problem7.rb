# 素数を小さい方から6つ並べると 2, 3, 5, 7, 11, 13 であり, 6番目の素数は 13 である.
# 10001番目の素数を求めよ.

# 素数がどんな数か
# 自分とその数以外では割り切れない、どう表現するか

# 約数の個数が2つだけ

num = 2 #数字
divide = 1 # 割る数
divisorCount = 0 # 約数の個数
primeNumbers = [] # 素数たち

# 約数と約数の数を混ぜないように
# whileだとtrueになるまでを表現できなさそう

# untilを使う、条件を達成するまで繰り返す
until primeNumbers.length == 10001 do

  until divide > num do

    if num % divide == 0
      divisorCount += 1
    end

    divide += 1
  end

  if divisorCount == 2
    primeNumbers.push(num)
  end
  
  num += 1
  divide = 1
  divisorCount = 0
end

p primeNumbers.last
