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
