# 197は巡回素数と呼ばれる. 桁を回転させたときに得られる数 197, 971, 719 が全て素数だからである.

# 100未満には巡回素数が13個ある: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, および97である.

# 100万未満の巡回素数はいくつあるか?

require 'prime'

@answer = []
def judge(num)
  arr = num.map(&:to_i)
  arr.permutation(num.count).to_a.each do |f|
    return if ! Prime.prime?(f.join.to_i)
  end
  @answer << num
end

Prime.each(100000).to_a.map{|a| a.to_s.split("")}.each do |num|
  judge num
end


p @answer.map{|a| a.join}.map(&:to_i)
