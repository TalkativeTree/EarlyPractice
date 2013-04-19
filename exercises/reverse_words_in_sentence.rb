#reverse words in a string

def reverse_words(str)
	str.split.map{|word| word.reverse}.join(" ")
end

puts reverse_words "hcI nib nie renilreB"