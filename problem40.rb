# 正の整数を順に連結して得られる以下の10進の無理数を考える:

# 0.123456789101112131415161718192021...
# 小数第12位は1である.

# dnで小数第n位の数を表す. 
# d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000 を求めよ

i = 0
answer = String.new
while i < 1000000 do
  i += 1
  answer += i.to_s
end

arr = answer.split("").map(&:to_i)

p arr[0] * arr[9] * arr[99] * arr[999] * arr[9999] * arr[99999] * arr[999999] == 210