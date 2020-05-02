# 最初の10個の自然数について, その二乗の和は,
# 12 + 22 + ... + 102 = 385
# 最初の10個の自然数について, その和の二乗は,
# (1 + 2 + ... + 10)2 = 3025
# これらの数の差は 3025 - 385 = 2640 となる.

# 同様にして, 最初の100個の自然数について二乗の和と和の二乗の差を求めよ.

i = 1 
sumSquared = 0

# 二乗の和
while (i < 101) do
   sumSquared += i * i
   i += 1
end

j = 1
sumTotal = 0

while (j < 101) do
   sumTotal += j
   j += 1
end

# 和の二乗からひく
p sumTotal * sumTotal - sumSquared
