# 三角数の数列は自然数の和
# 三角数：１から増やして行った行で成り立つ数字
# 和がそれぞれ１、３、６・・・と増えていく
# 和の約数はそれぞれ、「１」、「１、３」、「１、２、３、６」・・・と増えていく

# アプローチ
# まず三角数自体を表す
# 約数の求め方、法則を導き出す
# 500個の場合を求める
# 76576500になるらしい

def divide(num)
  total = 0
  for i in 1..num+1 do
      d = num%i
      if d == 0 
        total += 1
      end
  end
  return total
end

i = 0
many = 0
while many < 501 do
  i +=1
  total = (1..i).to_a.sum
  many = divide(total)
  if many > 500
    p total
  end
end
