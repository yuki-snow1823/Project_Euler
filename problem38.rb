# 192 に 1, 2, 3 を掛けてみよう.

# 192 × 1 = 192
# 192 × 2 = 384
# 192 × 3 = 576

# 積を連結することで1から9の パンデジタル数 192384576 が得られる. 
# 192384576 を 192 と (1,2,3) の連結積と呼ぶ.

# 同じようにして, 9 を 1,2,3,4,5 と掛け連結することで
# パンデジタル数 918273645 が得られる. これは 9 と (1,2,3,4,5) との連結積である.

# 整数と (1,2,...,n) (n > 1) との連結積として得られる9桁のパンデジタル数の中で最大のものはいくつか?


# 範囲が広い、どのようにして制限をかけるか？
# 3桁なら、対応が1-3までが基本
# わからない、調べ学習へ

def get_pandigital? n
  nums = []
  (1..9).each do |digit|
    nums += (n * digit).to_s.split ''
    return 0 if nums.size != nums.uniq.size || nums.include?('0')
    return nums.join('').to_i if nums.size == 9
  end
end

solution = 0

(9..9_876).each do |n|
  # could do better by only looking at 9's!
  result = get_pandigital? n
  if result > solution
    solution = result
  end
end

puts solution
