# 585 = 10010010012 (2進) は10進でも2進でも回文数である.
# 100万未満で10進でも2進でも回文数になるような数の総和を求めよ.
# (注: 先頭に0を含めて回文にすることは許されない.)

# アプローチ
# まず回文数を判定
# 2進数でもそれが行えるかチェック
# 先頭が0のものは無し


def reverse_number(num)
  num == num.to_s.reverse.to_i ? true : false
end
reverse_numbers = []

(1..999999).to_a.each do |i|
  if reverse_number(i)
    reverse_numbers << i
  end
end

def check_number(num)
  reverse_number(num.to_s(2).to_i)
end

check_numbers = []
reverse_numbers.each do |j|
  if check_number(j)
    check_numbers << j
  end
end

check_numbers.sum == 872187
