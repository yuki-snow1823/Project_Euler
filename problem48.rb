# 次の式は, 1**1 + 2**2 + 3**3 + ... + 10**10 = 10405071317 である.
# では, 1**1 + 2**2 + 3**3 + ... + 1000**1000 の最後の10桁を求めよ.

i, total = 1, 0

while i <= 1000 do
  total += i ** i
  i += 1
end

p total.to_s.split("").reverse[0..9].reverse.join.to_i == 9110846700 # true

