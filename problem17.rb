# 1 から 5 までの数字を英単語で書けば one, two, three, four, five であり, 全部で 3 + 3 + 5 + 4 + 4 = 19 の文字が使われている.

# では 1 から 1000 (one thousand) までの数字をすべて英単語で書けば, 全部で何文字になるか.

# 注: 空白文字やハイフンを数えないこと. 例えば, 342 (three hundred and forty-two) は 23 文字, 115 (one hundred and fifteen) は20文字と数える. なお, "and" を使用するのは英国の慣習.


# 1-10を文字として格納
# 10-19も文字として格納
# 20以降は twenty + 1~10の文字数
# 100以降は one系 + hundered + 10〜99までの文字列

# 1から9までの文字
one_to_nine = ["one","two","three","four","five","six","seven","eight","nine"].join.length

ten_to_nineteen = ["ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","nineteen"].join.length

twenty_head = "twenty".length
twenty_to_twenty_nine = twenty_head + twenty_head * 9 + one_to_nine

# あと組み合わせていくこと？
