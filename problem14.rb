=begin
正の整数に以下の式で繰り返し生成する数列を定義する.

n → n/2 (n が偶数)

n → 3n + 1 (n が奇数)

13からはじめるとこの数列は以下のようになる.

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
13から1まで10個の項になる. この数列はどのような数字からはじめても最終的には 1 になると考えられているが, まだそのことは証明されていない(コラッツ問題)

さて, 100万未満の数字の中でどの数字からはじめれば最長の数列を生成するか.

注意: 数列の途中で100万以上になってもよい
=end


def calc(number)
  until number == 1 do
    if number.even?
      while number.even?
      number = number / 2
      p number
      end
    else
      number = 3 * number + 1  
      p number
    end
  end
  number
end

p calc(5)
