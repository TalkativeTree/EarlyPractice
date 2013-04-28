@roman_digit_pattern = Hash["1" => 'X', 
											 	"2" => 'XX', 
											 "3" => 'XXX',
											 "4" => 'XY',
											 "5" => 'Y',
											 "6" => 'YX',
											 "7" => 'YXX',
											 "8" => 'YXXX',
											 "9" => 'XZ']

def digits_index(arabic)
	array = []
	array <<arabic.to_s.each_char do |chr| 
		count += 1
		count
	end
	array
end
puts "digits_index = #{digits_index(423)}"
# p digits_index(423) # => [0,1,2]


def to_roman(arabic)
	pattern = []
	@roman_digit_pattern
	arabic.to_s.each_char do |get_pattern|
		pattern << @roman_digit_pattern[get_pattern]
	end
	pattern
end
puts "roman(423) = #{to_roman(423)}"

def conversion_pair(arabic)
	index = digits_index(arabic)
	p index
	patterns = to_roman(arabic)
	p patterns
	# pattern_hash = Hash.new[[index], [patterns]]
	# pattern_hash = Hash.new do |index, pattern| 
	# 	index += 1 
	# 	puts "index = #{index}"
	# 	pattern = to_roman(arabic)
	# 	puts "pattern = #{pattern}"
	#end
end

puts conversion_pair(432)
# puts to_roman(423) #=> 'XX' => 
# def to_roman(arabic)
# x = [ 'I', 'X', 'C', 'M']
# y = [ 'V', 'L', 'D', '' ]
# z = [ 'X', 'C', 'M', '' ]
# puts x[2]
# array = [['I', 'V', 'X'],
# 				 ['X', 'L', 'C'],
# 				 ['C', 'D', 'M'],]

# puts array[0][0] * 1
# puts array[0][0] * 2
# puts array[0][0] * 3
# puts array[0][0] + array[0][1]
# puts array[0][1]
# puts array[0][1] + array[0][0] * 1
# puts array[0][1] + array[0][0] * 2
# puts array[0][1] + array[0][0] * 3
# puts array[0][1] + array[0][2]
# puts array[1][0] * 1
# puts array[1][0] * 2
# puts array[1][0] * 3
# puts array[1][0] + array[1][1]
# puts array[1][1]
# puts array[1][1] + array[1][0] * 1
# puts array[1][1] + array[1][0] * 2
# puts array[1][1] + array[1][0] * 3
# puts array[1][1] + array[1][2]
#digits_place = arabic.to_s.length - 1
# # puts digits_place
# # puts arabic.to_s
# # puts roman_digit_pattern["1"].inspect
# # puts array[digits_place][roman_digit_pattern["3"]]
# arabic.to_s.each_char do |digit| 
# 	 puts roman_digit_pattern[digit].inspect
# end
# puts array.inspect
# digits_place -= 1
# end

