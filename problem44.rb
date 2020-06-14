# 五角数は Pn = n(3n-1)/2 で生成される. 最初の10項は

# 1, 5, 12, 22, 35, 51, 70, 92, 117, 145, ...
# である.

# P4 + P7 = 22 + 70 = 92 = P8 である. しかし差 70 - 22 = 48 は五角数ではない.

# 五角数のペア Pj と Pk について,
# 差と和が五角数になるものを考える. 差を D = |Pk - Pj| と書く. 差 D の最小値を求めよ.

i = 0
five_arr = []
while i <= 3000 do
  i += 1
  five_arr << i*(3*i-1)/2
end

ansewer = []
five_arr.combination(2).to_a.each do |f|
  ansewer << (f[1] - f[0]).abs if five_arr.include?(f.sum) && five_arr.include?((f[1] - f[0]).abs)
end

p ansewer == 5482660 #true
