# オイラーは以下の二次式を考案している:

# n2 + n + 41.
# この式は, n を0から39までの連続する整数としたときに40個の素数を生成する. しかし, n = 40 のとき 402 + 40 + 41 = 40(40 + 1) + 41 となり41で割り切れる. また, n = 41 のときは 412 + 41 + 41 であり明らかに41で割り切れる.

# 計算機を用いて, 二次式 n2 - 79n + 1601 という式が発見できた. これは n = 0 から 79 の連続する整数で80個の素数を生成する. 係数の積は, -79 × 1601 で -126479である.

# さて, |a| < 1000, |b| ≤ 1000 として以下の二次式を考える (ここで |a| は絶対値): 例えば |11| = 11 |-4| = 4である.

# n2 + an + b
# n = 0 から始めて連続する整数で素数を生成したときに最長の長さとなる上の二次式の, 係数 a, b の積を答えよ.

# 素数の数を調べるようなことをする
# で、そのabを検証する


# 調べたこと

# しかし、条件から探索範囲について次のことがわかる。
# bは素数である（nが0から始まるため）　理解
# aは-bより大きい（素数であるためには式の結果が正でなければならない）　理解
# nの上限はb-1である（n=bで必ず割り切れるため）　理解
# 式の値の上限はほぼ200万である（10002+1000×1000+1000。bは素数なのでもう少し小さい。)　理解

# 参考　https://qiita.com/yopya/items/85be51244bb4c5bc1e8f

def hoge(num_a, num_b):
    f = lambda n, a, b : n ** 2 + a * n + b
    lst_prime = set() # 判定済みの素数格納用
    ans, max_cnt = 0, 0
    for a in range(-num_a + 1, num_a):
        for b in range(-num_b + 1, num_b):
            n = 0
            while True:
                x = f(n, a, b)
                if x in lst_prime or check_prime(x):
                    lst_prime.add(x)
                    n += 1
                else:
                    break
            if max_cnt < n:
                max_cnt = n
                ans = a * b
    return ans

def check_prime(n): #素数判定用関数
    if n < 1:
        return False
    else:
        for i in range(2, (n//2)):
            if n % i == 0:
                return False
        return True

print(hoge(1000,1001))

# よく分からない
# http://tsumuji.cocolog-nifty.com/tsumuji/2009/02/problem-27.html
