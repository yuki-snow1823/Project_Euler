# n桁パンデジタルであるとは, 1からnまでの数を各桁に1つずつ持つこととする.
# #下のリンク先にあるような数学的定義とは異なる
# 例えば2143は4桁パンデジタル数であり, かつ素数である.
#  n桁（この問題の定義では9桁以下）パンデジタルな素数の中で最大の数を答えよ.

require "prime"

def pandegital?(num)
  arr = num.to_s.split("")
  arr.size == arr.uniq.size && arr.sort == (1..arr.size).to_a.map(&:to_s)
end

p (1..987654321).to_a.select{|a| a.prime? && pandegital?(a) }.max

# 7652413
