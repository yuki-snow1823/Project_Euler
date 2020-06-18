# それぞれ2つの異なる素因数を持つ連続する2つの数が最初に現れるのは:

# 14 = 2 × 7
# 15 = 3 × 5

# それぞれ3つの異なる素因数を持つ連続する3つの数が最初に現れるのは:

# 644 = 2**2 × 7 × 23
# 645 = 3 × 5 × 43
# 646 = 2 × 17 × 19

# 最初に現れるそれぞれ4つの異なる素因数を持つ連続する4つの数を求めよ. その最初の数はいくつか?

require "prime"
@answer = []

def continuous_number(num)
  if num.prime_division.size != 4
    @answer = []
    return
  else
    @answer << num
  end
  return if @answer.size == 4
end


1.upto 1000000 do |i|
  continuous_number(i)
  return p @answer.first == 134043 if @answer.size == 4 #true
end
