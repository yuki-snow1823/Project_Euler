# 単位分数とは分子が1の分数である. 分母が2から10の単位分数を10進数で表記すると次のようになる.

# 1/2 = 0.5
# 1/3 = 0.(3)
# 1/4 = 0.25
# 1/5 = 0.2
# 1/6 = 0.1(6)
# 1/7 = 0.(142857)
# 1/8 = 0.125
# 1/9 = 0.(1)
# 1/10 = 0.1

# 0.1(6)は 0.166666... という数字であり, 1桁の循環節を持つ. 1/7 の循環節は6桁ある.

# d < 1000 なる 1/d の中で小数部の循環節が最も長くなるような d を求めよ.


# 循環節、をどのようにして求めるか。
# 上限は1/1000

# 参考 http://obelisk.hatenablog.com/entry/2015/12/21/050957

answer = []
i = 1
while i < 1000 do
  answer << 1/i.to_f
  i +=1
end

b = answer.map(&:to_s).sort_by(&:length).last
p answer.map(&:to_s).index(b) + 1 == 993


# 他の人の回答
# http://tsumuji.cocolog-nifty.com/tsumuji/2009/07/project-euler-2.html

def count(m)
  m = m / 2 while m.even?
  m = m / 5 while m.modulo(5).zero?
  return 0 if m == 1
  n = 10
  c = 1
  until n.modulo(m) == 1
    n = n * 10
    c = c + 1
  end
  return c
end

 

max = [0, 0]

999.downto(2) do |i|

  break if i < max[1]

  c = count(i)

  max = [i, c] if c > max[1]

end

 

puts max[0]

# 基本的には分子をどんどん 10 倍していって分母で割ったときに余りが 1 になるところを探していきます。（余りが 1 になったところからまた繰り返しが始まるので……）


# ただし、分母を素因数分解したときに、因子に 2 や 5 が含まれているとそのままの考え方では通用しなくなります。


# そこで、循環節の長さを考える場合は、次のように分けて考えると分かりやすいと思います。



# 分母 d が 2 または 5 の因子を含まない場合

# 分母 d が 2 または 5 以外の因子を持たない場合

# その他の場合
