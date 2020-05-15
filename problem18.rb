# 最大経路の和

#                             75
#                           95 64
#                         17 47 82
#                       18 35 87 10
#                     20 04 82 47 65
#                   19 01 23 75 03 34
#                 88 02 77 73 07 63 67
#               99 65 04 28 06 16 70 92
#             41 41 26 56 83 40 80 70 33
#           41 48 72 33 47 32 37 16 94 29
#         53 71 44 65 25 43 91 52 97 51 14
#       70 11 33 28 77 73 17 78 39 68 17 57
#     91 71 52 38 17 14 91 43 58 50 27 29 48
#   63 66 04 68 89 53 67 30 73 16 69 87 40 31
# 04 62 98 27 23 09 70 98 73 93 38 53 60 04 23

# 行ごとに配列に入れる
# ただそれだと「隣り合う」という条件を満たさない
# 常に２択から選ぶ

# どう条件分岐させるか
# 自分のindexと同じか+1にしか行かなそう
# 95_0ならば、17_0か47_1

data = <<DATA
75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
DATA

# TRI = data.split(/\n+/).map { |line| line.split(/\s+/).map { |e| e.to_i } }
#  def max_route(lev, x)
#    return TRI[lev][x] if lev == TRI.length-1
#    [max_route(lev+1, x), max_route(lev+1, x+1)].max + TRI[lev][x]
#  end
# p max_route(0, 0)

# 再帰的なアプローチという

# 2個引数をとる
def select(i, j)
  # 配列がi番目ではないならなら0
  return 0 unless $arr[i]
  # このメソッド自体を入れる（再帰的）
  v1 = select(i + 1, j)
  v2 = select(i + 1, j + 1)
  # 選ばせたものの最大値
  return $arr[i][j] + [v1, v2].max
end

$arr = Array.new
data.each_line do |data|
  # それぞれの行が要素として入る数列
  $arr.push(data.chomp!.split.map{|st| st.to_i})
end

# おそらく開始地点[[a]...]という要素の[a]
puts select(0, 0)
