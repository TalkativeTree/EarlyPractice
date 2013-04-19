def sort some_array
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  input = []
  unsorted_array = []
  new_array = []
  while input != ""
  	input = gets.chomp
  	unsorted_array << [input.downcase, input]
    sorted_array = unsorted_array.sort
  end
  sorted_array.each do |num|
    new_array << num[1]
  end
  new_array  	
end

puts sort []