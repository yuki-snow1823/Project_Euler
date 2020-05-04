# 素数を小さい方から6つ並べると 2, 3, 5, 7, 11, 13 であり, 6番目の素数は 13 である.
# 10001番目の素数を求めよ.

# 素数がどんな数か
# 自分とその数以外では割り切れない、どう表現するか

# 約数の個数が2つだけ

num = 2 #数字
divisor = 1 # 約数
divisorCount = 0 # 約数の個数
primeNumbers = [] # 素数たち

# 約数と約数の数を混ぜないように
# whileだとtrueになるまでを表現できなさそう

while primeNumbers.length == 13 do

  while divisor < num do

    if num % divisor == 0
      divisor += 1
      divisorCount += 1
    end
    divisor += 1
    
  end

  num += 1

  if divisorCount == 2
    primeNumbers.push(num)
    divisorCount = 0
  end
end

p primeNumbers
