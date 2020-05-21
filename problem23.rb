# 完全数とは, その数の真の約数の和がそれ自身と一致する数のことである. たとえば, 28の真の約数の和は, 1 + 2 + 4 + 7 + 14 = 28 であるので, 28は完全数である.

# 真の約数の和がその数よりも少ないものを不足数といい, 真の約数の和がその数よりも大きいものを過剰数と呼ぶ.

# 12は, 1 + 2 + 3 + 4 + 6 = 16 となるので, 最小の過剰数である. 
# よって2つの過剰数の和で書ける最少の数は24である. 数学的な解析により, 28123より大きい任意の整数は2つの過剰数の和で書けることが知られている. 2つの過剰数の和で表せない最大の数がこの上限よりも小さいことは分かっているのだが, 
# この上限を減らすことが出来ていない.

# 2つの過剰数の和で書き表せない正の整数の総和を求めよ.

# 問題文を噛み砕く
# 要は、もっといろいろな数が過剰数の和で表すことができないという事
# で、それを全部出して、和を出せって事

# アプローチ 過剰数をとりあえず全部出す
# 組み合わせる、28123より小さいものを探すみたいな感じかな

# 約数を求める
def divide(i)
  number = 1
  answer = []
  while number <= i / 2 do
    if i % number == 0
      answer << number 
    end
    number += 1
  end
  answer
end

# 過剰数を求める
over_number = []
(1..12000).to_a.each do |num|
  if divide(num).sum > num
    over_number << num
  end
end

over_number_combi = over_number.repeated_combination(2).to_a.map{|x| x[0] + x[1]}
p over_number_combi.max
arr = (1..200).to_a

arr.delete_if do |item|
  over_number_combi.include?(item)
end
p arr


# include Math
# require 'mathn'

# def rui(i,j)
# 	beki=1
# 	sum=1
# 	for k in 1..j
# 		beki=beki*i
# 		sum=sum+beki
# 	end
# 	return sum
# end

# kajo=Array.new
# for i in 1..28122 do
# sum = 1
# 	pq = i.prime_division
# 	pq.each do |tes|
# 		sum*=rui(tes[0],tes[1])
# 	end
# 	if sum>i*2
# 			kajo<<i
# 		end
# end

# kajo2=kajo
# wa = Array.new
# kajo.each do |tes1|
# 	kajo2.each do |tes2|
# 		if (tes1+tes2)<28123
# 		wa[tes1+tes2]=1
# 		end
# 	end
# end
# i=0
# ans=0
# wa.each do|ktkr|
# 	if !ktkr
# 	ans=ans+i
# 	end
# i=i+1
# end
# p ans
