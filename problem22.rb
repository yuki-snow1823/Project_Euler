# 5000個以上の名前が書かれている46Kのテキストファイル names.txt を用いる. まずアルファベット順にソートせよ.

# のち, 各名前についてアルファベットに値を割り振り, リスト中の出現順の数と掛け合わせることで, 名前のスコアを計算する.

# たとえば, リストがアルファベット順にソートされているとすると, COLINはリストの938番目にある. またCOLINは 3 + 15 + 12 + 9 + 14 = 53 という値を持つ. よってCOLINは 938 × 53 = 49714 というスコアを持つ.

# ファイル中の全名前のスコアの合計を求めよ.

result = File.open("./names.txt")

lines = []
result.each_line do |line|
  lines << line.delete("\"")
end
# 番目、だから結果は+1すること
data = lines[0].split(",").to_a.sort

answer = []
# 文字コード-64が「番」になりそう
data.each_with_index do |name,index|
  score = 0
  name.split("").each{|n| score += (n.ord - 64) }
  answer << score * (index + 1)
end

p answer.sum == 871198282
