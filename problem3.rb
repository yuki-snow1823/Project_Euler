# 13195 の素因数は 5, 7, 13, 29 である.
# 600851475143 の素因数のうち最大のものを求めよ

# 標準添付ライブラリを使う場合はこう
require 'prime'
p Prime.prime_division(600851475143) 

# a. お題が、その数字で割り切れるか (＝割り算のあまりが0であるか)
# b. その数字が素数であるか (1とその数でしか割り切れない数であるか)

# 自分で考えた場合
def largest_prime_factor(number)
  # 最初の素因数を決める
  i = 2
  # 初期化
  largest_prime_factor = 0

  #入力された数までiを増やしていく
  #自動で素因数分解するイメージ
  while i < number 
    if number % i == 0
      largest_prime_factor = i
      number = number / i
      # 毎回2を入れれば自然に増える
      i = 2
    else
      # 何度もここを通過させる
      i += 1
    end
  end
p number
end

largest_prime_factor(600851475143)


# 他の人の答え
  # 素因数分解
  n = 600851475143
  def decomposit_prime(n)
    # 割る数の初期値
    a = 2
    # √n ≧ a ( n ≧ a * a ) の間ループ処理
    while n >= a * a
      # a で割り切れたら、a は素因数
      # そして、割られる数を a で割る
      # a で割り切れなかったら a を 1 増加させる
      if n % a == 0
        print "#{a} * "
        n /= a
      else
        a += 1
      end
    end
    # 最後に残った n は素因数
    puts n.last
  end
