# 145は面白い数である. 1! + 4! + 5! = 1 + 24 + 120 = 145となる.

# 各桁の数の階乗の和が自分自身と一致するような数の和を求めよ.

# 注: 1! = 1 と 2! = 2 は総和に含めてはならない.


# 上限を考える
# とりあえずやってみる


def factorial(number)
  number = 0 if number.nil?
  (1..number).inject(1,:*)
end

answer = []
(1..100000).to_a.map(&:to_s).each do |f|
  sum = 0
  f.split("").each do |g|
    sum += factorial g.to_i
  end
  answer << sum if sum == f.to_i
end

answer = answer.sum -3

p answer == 40730

# >>    # 999999(6桁)→9!*6=2177280(7桁)、9999999(7桁)→9!*7=2540160(7桁)、
#     # 99999999(8桁)→9!*8=2903040(7桁) なので7桁が問に合致する可能性のある最大の桁数
#     # 実質 9!*7=2540160 までチェックすれば問題ないはず

# なるほど〜https://qiita.com/yopya/items/33a7237e3daeeab7b4a7 #Qiita 
