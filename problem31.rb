# イギリスでは硬貨はポンド£とペンスpがあり，一般的に流通している硬貨は以下の8種類である.

# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).

# 以下の方法で£2を作ることが可能である．

# 1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p

# これらの硬貨を使って£2を作る方法は何通りあるか?

# 円と千円みたいな感じ
# 配列から好きな組み合わせで200作る

arr = [1,2,5,10,20,50,100].reverse
p arr

# 組み合わせかつ枚数
# 枚数はそれぞれ200,100,40,20,10,4,2の実質制限がある。
# 多い方から処理してみるか？

# 100からとっていって、200になったら終了、次は50からとっていって、、、的な

def count_coins coins, target, last_coin = 0

	return 1 if target == 0
	total = 0

	coins.each do |c|
		next if c < last_coin
		total += count_coins(coins, target - c, c) if (target >= c)
	end

	total
end

puts count_coins(
	[1,2,5,10,20,50,100,200],
	200 #第二引数target
)
