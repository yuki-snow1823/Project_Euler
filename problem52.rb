# 125874を2倍すると251748となる. 
# これは元の数125874と順番は違うが同じ数を含む.
# 2x, 3x, 4x, 5x, 6x が x と同じ数を含むような最小の正整数 x を求めよ.

def number_split_check(num)
  split_numbers = num.to_s.split("").sort
  return num if split_numbers == (2 * num).to_s.split("").sort && 
           split_numbers == (3 * num).to_s.split("").sort &&
           split_numbers == (4 * num).to_s.split("").sort &&
           split_numbers == (5 * num).to_s.split("").sort &&
           split_numbers == (6 * num).to_s.split("").sort
end

i = 100000
while i < 1000000 do
  i += 1
  return p "正解" if number_split_check(i) == 142857
end
