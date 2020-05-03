# 素数を小さい方から6つ並べると 2, 3, 5, 7, 11, 13 であり, 6番目の素数は 13 である.
# 10001番目の素数を求めよ.

# 素数がどんな数か
# 自分とその数以外では割り切れない、どう表現するか

# 約数の個数が2つだけ

num = 0
divisor = 0
primeNumbers = []

while primeNumbers.length == 13 do

  while divisor == 2 do

    if num % divisor == 0
      divisor += 1
    else
      num += 1
    end

  end
  primeNumbers.push(primeNumber)
end

p primeNumbers
