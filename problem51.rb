# *3の第1桁を置き換えることで, 13, 23, 43, 53, 73, 83という6つの素数が得られる.

# 56**3の第3桁と第4桁を同じ数で置き換えることを考えよう. 
# この5桁の数は7つの素数をもつ最初の例である: 56003, 56113, 56333, 56443, 56663, 56773, 56993. 
# よって, この族の最初の数である56003は, このような性質を持つ最小の素数である.

# 桁を同じ数で置き換えることで8つの素数が得られる最小の素数を求めよ. (注:連続した桁でなくても良い)

require 'prime'

require 'math_tool'

 

Prime.each do |n|

  arr = n.to_a

 

  # 0, 1, 2 の位置を探す ( 一の位は調べない )

  pos_arr = [[], [], []]

  arr[0 .. -2].each_with_index do |v, i|

    pos_arr[v].push(i) if v < 3

  end

 

  # 同じ数字を置換して、素数を探す。

  pos_arr.select{|a| a.size > 1}.each do |pos|

    2.upto(pos.size) do |r|

      # 同じ数字が 2 個以上あった場合、2 個変えた場合、3 個変えた

      # 場合……と、全ての組み合わせを考える。

      pos.combination(r).each do |a|

        nums = Array.new

        (0 .. 9).each do |n|

          a.each{|i| arr[i] = n}

          nums.push(arr.to_i) unless arr[0] == 0

        end

        select_nums = nums.select{|n| n.prime?}

        if select_nums.size == 8

          # p select_nums

          puts select_nums[0]

          exit

        end

      end

    end

  end

end
