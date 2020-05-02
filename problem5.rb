# 2520 は 1 から 10 の数字の全ての整数で割り切れる数字であり, そのような数字の中では最小の値である.
# では, 1 から 20 までの整数全てで割り切れる数字の中で最小の正の数はいくらになるか.

# 全部の数で割っていき、全てクリアした時にのみ合格にするようなアプローチ

# 最大値の初期化

maxNumber = 3000
arr = []

# breakするまで無限ループ

while true 
  (1..20).each do |num|
    remainder = maxNumber % num
    # 全部0だったらというロジックにしたい
    # 繰り返しが入れ子になっている場合は「break」が実行された一番内側の繰り返しを抜けます。
    arr.push(remainder)
  end

  # 全て0であることを期待

  if arr.all? {|v| v == 0 } 
    p maxNumber
    break
  end
  
  arr = []
  maxNumber +=1
end


# count = 1
# while true
#         num = 20 * count
#         if num % 1 == 0 and num % 2 == 0 and num % 3 == 0 and num % 4 == 0 and num % 5 == 0 and num % 6 == 0 and num % 7 == 0 and num $
#                 puts num
#         end
#         count += 1
# end
