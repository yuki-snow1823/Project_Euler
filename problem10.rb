# 10以下の素数の和は 2 + 3 + 5 + 7 = 17 である.
# 200万以下の全ての素数の和を求めよ.

# prime methodを使った場合
# require 'prime'
#  p Prime.each(2000000).to_a.sum 142913828922

# ですから、まとめると、素数かどうか判定するためには、その素数の平方根以下の素数で割り切れるかどうかを調べれば判定できることになります。
primeNumbers = [2]

(3..2000000).each do |i|
  continue = true
  primeNumbers.each do |num|
      if i % num == 0
        continue = false
        break
      end
  end
  primeNumbers.push(i) if continue
  # 割りきれるとプッシュされない
end
p primeNumbers.sum
