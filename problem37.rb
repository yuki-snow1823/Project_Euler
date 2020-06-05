# 3797は面白い性質を持っている. まずそれ自身が素数であり, 
# 左から右に桁を除いたときに全て素数になっている (3797, 797, 97, 7). 
# 同様に右から左に桁を除いたときも全て素数である (3797, 379, 37, 3).

# 右から切り詰めても左から切り詰めても素数になるような素数は11個しかない. 総和を求めよ.

# 注: 2, 3, 5, 7を切り詰め可能な素数とは考えない.

require "prime"

def prime_judge(num)
  @i = 1
  while @i <= num.length do
    @result << num.first(@i).join.to_i.prime?
    @result << num.last(@i).join.to_i.prime?
    @i += 1
  end
  @i = 0
  @result.all?{|a| a.to_s == "true" } ? true : false
end

arr = (11..1000000).to_a

arr.select! do |num|
  @result = []
  prime_judge(num.to_s.split(""))
end

p arr.sum == 748317
