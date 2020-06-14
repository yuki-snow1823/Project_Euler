# 三角数のn項は tn = ½n(n+1)で与えられる. 最初の10項は

# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
# である.

# 単語中のアルファベットを数値に変換した後に和をとる.
# この和を「単語の値」と呼ぶことにする. 例えば SKY は 19 + 11 + 25 = 55 = t10である.
# 単語の値が三角数であるとき, その単語を三角語と呼ぶ.

# 16Kのテキストファイル words.txt 中に約2000語の英単語が記されている. 三角語はいくつあるか?

@triangle, i = [], 0
while i <= 1000
  i += 1
  @triangle << i*(i+1)/2
end

@alphabet = ("A".."Z").to_a
@sum = 0

def search_triangle(word)
  word.split("").each do |f|
  @sum += @alphabet.index(f) + 1
  end
  result,@sum = @triangle.include?(@sum), 0
  result
end

result = File.open("./p042_words.txt")
lines = []
result.each_line do |line|
  lines << line.delete("\"")
end
lines = lines.join.split(",")

count = 0
lines.each do |g|
  count += 1 if search_triangle(g)
end

p count == 162 #true
 