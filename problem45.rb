
# # 三角数, 五角数, 六角数は以下のように生成される.

# # 三角数	Tn=n(n+1)/2	1, 3, 6, 10, 15, ...
# # 五角数	Pn=n(3n-1)/2	1, 5, 12, 22, 35, ...
# # 六角数	Hn=n(2n-1)	1, 6, 15, 28, 45, ...
# # T285 = P165 = H143 = 40755であることが分かる.

# # 次の三角数かつ五角数かつ六角数な数を求めよ.

# tri_num = []
# i = 286
# while i <= 100000 do
#   tri_num << i * (i+1) / 2
#   i += 1
# end

# pen_num = []
# j = 166
# while j <= 100000 do
#   pen_num << j * (3*j-1) / 2
#   j += 1
# end

# hex_num = []
# k = 143
# while k <= 100000 do
#   hex_num << k * (2*k-1)
#   k += 1
# end

# p hex_num & tri_num & pen_num == 1533776805 # true


# 他の人
class Integer
  # * 五角数であれば、何番目かを返す。
  def pentagon?
    x = ((1 + 24 * self) ** 0.5 + 1) / 6.0
    if x == x.to_i
      return x.to_i
    else
      return false
    end
  end

  # * 六角数を求める。
  def hexagon
    return 2 * self * self - self
  end
end

144.upto(1/0.0) do |i|
  h = i.hexagon
  if h.pentagon? # 両方条件を満たすなら
    puts h
    exit
  end
end
