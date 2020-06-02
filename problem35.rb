# 197は巡回素数と呼ばれる. 桁を回転させたときに得られる数 197, 971, 719 が全て素数だからである.

# 100未満には巡回素数が13個ある: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, および97である.

# 100万未満の巡回素数はいくつあるか?

require 'prime'

# @answer = []
# def judge(num)
#   arr = num.map(&:to_i)
#   arr.permutation(num.count).to_a.each do |f|
#     return if ! Prime.prime?(f.join.to_i)
#   end
#   @answer << num
# end

# Prime.each(1000000).to_a.map{|a| a.to_s.split("")}.each do |num|
#   judge num
# end
# p @answer.map{|a| a.join}.map(&:to_i)

def is_circular?(num)
	# Create array of all rotations
	num = num.to_s.split('') 
	@rotations = [num]
	# Create the rotations of the numbers if more than 1 digit
	(num.length-1).times do
		test = @rotations.last.dup
		test = test << test.shift
		@rotations << test
	end
	@rotations.all?{|num| is_prime?(num.join('').to_i)} ? true : false
end

p @rotations
 
def is_prime?(num)
	return false if num == 1
	return true if num == 2
 
	2.upto(Math.sqrt(num).ceil) do |test|
		if num % test == 0
			return false
		end
	end
	true
end
 
def circular_up_to(limit)
	count = 0
	limit.downto(2) do |num|
		count += 1 if is_circular?(num)
	end
	puts count
end
 
beginning_time = Time.now
circular_up_to(1_000_000)
end_time = Time.now
