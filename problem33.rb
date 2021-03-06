# 49/98は面白い分数である.「分子と分母からそれぞれ9を取り除くと,
# 49/98 = 4/8 となり, 簡単な形にすることができる」と
# 経験の浅い数学者が誤って思い込んでしまうかもしれないからである.
#  (方法は正しくないが，49/98の場合にはたまたま正しい約分になってしまう．)

# 我々は 30/50 = 3/5 のようなタイプは自明な例だとする.

# このような分数のうち, 1より小さく分子・分母がともに2桁の数になるような自明でないものは, 4個ある.

# その4個の分数の積が約分された形で与えられたとき, 分母の値を答えよ.


# 条件整理
# 分母の方が大きい
# 共に2けた
# 自明ではない
# たまたま正しい約分になる
# 最後は全て掛け合わせて約分したときの分子が答え

# 推測
# 10/11 ~ 98/99

# 例
# 11/12を1/2にして、あっていたらOK

# アプローチ
# どうやってチェックする？例えば[49,98]が与えられた場合
# if 同じ数を持っていれば それを削除した場合の答えが
# 約分普通にしたものと同じだったらtrue

# 約分ってどうやる？
# Rational

# p Rational(49,98)

# 分母
bunbo = (14..99).to_a

# 分子は、11からその数まで、（よりも1小さい）
bunshi = (11..98).to_a

answer = []
bunbo.each do |i|
  bunshi.each do |j|
    while j < i
      save =  [j,i].map(&:to_s)
      data =  [j,i].map(&:to_s).map{|a| a.split("")}.map{|a,b| a && b}
    break if data[0].to_i == 0 || data[1].to_i == 0
      answer << save if Rational(j,i) == Rational(data[0].to_i,data[1].to_i)
    break
   end
  end
end

answer.each do |i|
  p i
end


require 'mathn'

ans = 1 
        
# # Denominator is 2 digit.
# 10.upto(99) do |denominator|                           
#     # To avoid division by zero.
#     next if denominator % 10 == 0
#     # Numerator is 2 digit and less than Denominator.
#     10.upto(denominator-1) do |numerator|
#         fraction1 = numerator / denominator
#         fraction2 = 0     
#         # When you require 'mathn', "Integer / Integer" is not Integer but Fraction.
#         # If you want to Integer, you should be Fraction#to_i.
#         if (denominator % 10) == (numerator / 10).to_i  
#             fraction2 = (numerator % 10) / (denominator / 10).to_i
#         elsif (denominator / 10).to_i == (numerator % 10)
#             fraction2 = (numerator / 10).to_i / (denominator % 10)
#         end                                             
#         ans *= fraction1 if fraction1 == fraction2      
#     end                                                 
# end                                                     
                                                      
# p ans.to_s
