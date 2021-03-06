# 驚くべきことに, 各桁を4乗した数の和が元の数と一致する数は3つしかない.

# 1634 = 14 + 64 + 34 + 44
# 8208 = 84 + 24 + 04 + 84
# 9474 = 94 + 44 + 74 + 44
# ただし, 1=14は含まないものとする. この数たちの和は 1634 + 8208 + 9474 = 19316 である.

# 各桁を5乗した数の和が元の数と一致するような数の総和を求めよ.

p (1..9).to_a.map{|a| a**5}

# 最大値は250000くらい。？もっと小さいかも

# p (1..100).to_a.split()

# 実際に計算してみると分かるのですが、元の数が 7 桁以上になると「各桁を 5 乗した和」の桁数が追いつかなくなります。
# そこで、調べる数の上限は "9**5 x 6" となります。

power, total = 5, 0

# 9の5乗まで
(power * 9**power).times do |i|
  # iを文字列として区切って、(11なら1と1)、初期値を0として畳み込み演算をする。
  # sumは0
  total += i if i == i.to_s.split('').inject(0) {|sum, n|sum + n.to_i**power}
end

puts total - 1
